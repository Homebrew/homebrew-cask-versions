cask "openzfs-dev" do
  on_intel do
    version "2.1.6rc4,400"
    sha256 "612a04c581a5ef9c5b3e6969d25513a75efa4c8c51d051a6e1230e5a5c31455d"
    pkg "OpenZFSonOsX-#{version.csv.first}-Catalina-10.15.pkg"
  end
  on_arm do
    depends_on macos: ">= :monterey"
    version "2.1.6rc4,401"
    sha256 "948066fc6a59cff326d552952c31653f877ea947d2b00a691e982eda40742d91"
    pkg "OpenZFSonOsX-#{version.csv.first}-Monterey-12-arm64.pkg"
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
