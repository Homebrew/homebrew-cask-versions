cask "openzfs-dev" do
  on_intel do
    version "2.1.99,374"
    sha256 "0708be51f448be5e85a763f240ebcb7ec8f980694c68a00beb0e852764292b52"
    pkg "OpenZFSonOsX-#{version.csv.first}-Catalina-10.15.pkg"
  end
  on_arm do
    depends_on macos: ">= :monterey"
    version "2.1.99,378"
    sha256 "160fa584a59e00a1ac71f8807cd3822ed8a55d985ae25ea69e699c5a20de0e66"
    pkg "OpenZFSonOsX-#{version.csv.first}-Monterey-12.pkg"
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.csv.second}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  livecheck do
    skip "No version information available"
  end

  conflicts_with cask: "openzfs"
  depends_on macos: ">= :catalina"

  postflight do
    set_ownership "/usr/local/zfs"
  end

  uninstall_preflight do
    system "sudo", "/usr/local/zfs/bin/zpool", "export", "-af"
  end

  uninstall pkgutil:   "org.openzfsonosx.zfs",
            launchctl: [
              "org.openzfsonosx.InvariantDisks",
              "org.openzfsonosx.zconfigd",
              "org.openzfsonosx.zed",
              "org.openzfsonosx.zpool-import",
              "org.openzfsonosx.zpool-import-all",
            ]

  caveats do
    kext
  end
end
