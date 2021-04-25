cask "openzfs-dev" do
  if MacOS.version <= :mojave
    version "2.0.0,249"
    sha256 "ccb87037600c486c118afee7d9f3c41e8d5c4e90d41744a6e8dc78484b130e2b"
    pkg "OpenZFSonOsX-#{version.before_comma}-Mojave-10.14.pkg"
  elsif MacOS.version <= :catalina
    version "2.0.0,272"
    sha256 "4acb3d8f5c786349308ea14c1d0ba82d4050a3a6f71b8bd04c7e5cbd5c6ac969"
    pkg "OpenZFSonOsX-#{version.before_comma}-Catalina-10.15.pkg"
  elsif Hardware::CPU.intel?
    version "2.0.0,271"
    sha256 "cc6096201ffbb774c94c54b21de6a320d51b431ee161752c0e7aefdc02543646"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11.0.pkg"
  else
    version "2.0.0,270"
    sha256 "271e26b49687b266142adbbbf73d9a91fce4b44fc62d5d2e8f091efb5253f01b"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11.2-ARM64.pkg"
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.after_comma}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  conflicts_with cask: "openzfs"
  depends_on macos: ">= :mojave"

  livecheck do
    skip "No version information available"
  end

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
