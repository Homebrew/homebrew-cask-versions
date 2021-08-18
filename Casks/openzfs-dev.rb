cask "openzfs-dev" do
  if MacOS.version <= :mojave
    version "2.1.0rc4,341"
    sha256 "14d5de6c0723c71ce96ab8052fd24a52719c8618b167f6eebec5d7ca8f110dee"
    pkg "OpenZFSonOsX-#{version.before_comma}-Mojave-10.14.pkg"
  elsif MacOS.version <= :catalina
    version "2.1.0rc4,340"
    sha256 "7d4b9111956abaf1c9a7339d22fd4f30c1c897e0e99955b3c3ee418f16fe42c1"
    pkg "OpenZFSonOsX-#{version.before_comma}-Catalina-10.15.pkg"
  elsif Hardware::CPU.intel?
    version "2.1.0rc4,339"
    sha256 "36035302b9833a81c9f25caabc8d19031cd1575e6e4d4df39f4759b8402bf67e"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11.pkg"
  else
    version "2.1.0rc4,338"
    sha256 "9e25ff3d7701b6f84128714b0f5ef81b774fca30cd80103b67430775c98e5805"
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
