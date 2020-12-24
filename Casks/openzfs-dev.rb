cask "openzfs-dev" do
  if MacOS.version <= :mojave
    version "2.0.0,221"
    sha256 "55a44ed37f76eca89b938f91315d15ae053dae74c961e65b34079b1e17dccb48"
    pkg "OpenZFSonOsX-#{version.before_comma}-Mojave-10.14.pkg"
  elsif MacOS.version <= :catalina
    version "2.0.0,219"
    sha256 "304ea1ddc474b27827721b81b1718aaeba317f4d0657b3a1b994f224de151d92"
    pkg "OpenZFSonOsX-#{version.before_comma}-Catalina-10.15.pkg"
  else
    version "2.0.0,220"
    sha256 "a11cc3c3b43012d627fe3fba9728252385feff6da910b5b06d302e49c5424207"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11.0.pkg"
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.after_comma}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  conflicts_with cask: "openzfs"
  depends_on macos: ">= :mojave"

  uninstall_preflight do
    system "sudo", "/usr/local/bin/zpool", "export", "-af"
  end

  uninstall pkgutil:   "net.lundman.zfs",
            launchctl: [
              "org.openzfsonosx.InvariantDisks",
              "org.openzfsonosx.zconfigd",
              "org.openzfsonosx.zed",
              "org.openzfsonosx.zpool-import-all",
            ]

  caveats do
    kext
    'Please note that BigSur now requires boot-args="keepsyms=1" to work.' if MacOS.version == 11
  end
end
