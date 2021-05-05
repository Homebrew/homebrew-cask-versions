cask "openzfs-dev" do
  if MacOS.version <= :mojave
    version "2.0.0,283"
    sha256 "30f5c8948ca28d9d645af1440564756f3aeb39afc79bbc86f15aca70be4d115f"
    pkg "OpenZFSonOsX-#{version.before_comma}-Mojave-10.14.pkg"
  elsif MacOS.version <= :catalina
    version "2.0.0,281"
    sha256 "0733eda7e9e362de3e89fc9233e082faf9f1706ec8e06574855d71d730f1ecab"
    pkg "OpenZFSonOsX-#{version.before_comma}-Catalina-10.15.pkg"
  elsif Hardware::CPU.intel?
    version "2.0.0,282"
    sha256 "91ace2ea3aea67ee5d2b919ef64335a609051aba7ad6c40d649bc82b6407843f"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11.pkg"
  else
    version "2.0.0,280"
    sha256 "b119d8fc36ab0e11219032dd4ebaf5793168103968268453e20e4705b0bc11f3"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11-arm64.pkg"
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.after_comma}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  livecheck do
    skip "No version information available"
  end

  conflicts_with cask: "openzfs"
  depends_on macos: ">= :mojave"

  postflight do
    set_ownership "/usr/local/zfs"
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
