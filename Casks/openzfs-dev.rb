cask "openzfs-dev" do
  if MacOS.version <= :mojave
    version "2.0.0,249"
    sha256 "ccb87037600c486c118afee7d9f3c41e8d5c4e90d41744a6e8dc78484b130e2b"
    pkg "OpenZFSonOsX-#{version.before_comma}-Mojave-10.14.pkg"
  elsif MacOS.version <= :catalina
    version "2.0.0,266"
    sha256 "151171a437a05ee5b171ef5b833d8284aba9859697e4601fdade79b2a576a00c"
    pkg "OpenZFSonOsX-#{version.before_comma}-Catalina-10.15.pkg"
  elsif Hardware::CPU.intel?
    version "2.0.0,265"
    sha256 "5e85c05da5b50c5676e65b0e38d3c7fcc3815aa1cb2aaabc7d340d30cbacedcd"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11.0.pkg"
  else
    version "2.0.0,242"
    sha256 "53deccf5dced128c25c47592078c56cd52f488583c06e8b4f17468aae3041cc6"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11.2.pkg"
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.after_comma}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  conflicts_with cask: "openzfs"
  depends_on macos: ">= :mojave"

  uninstall_preflight do
    system "sudo", "/usr/local/zfs/bin/zpool", "export", "-af"
  end

  uninstall pkgutil:   "net.lundman.zfs",
            launchctl: [
              "org.openzfsonosx.InvariantDisks",
              "org.openzfsonosx.zconfigd",
              "org.openzfsonosx.zed",
              "org.openzfsonosx.zpool-import",
              "org.openzfsonosx.zpool-import-all",
            ]

  caveats do
    kext
    'Please note that BigSur now requires boot-args="keepsyms=1" to work.' if MacOS.version == 11
  end
end
