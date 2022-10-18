cask "openzfs-dev" do
  if MacOS.version < :el_capitan
    version "2.1.99,369"
    sha256 "932db021cddc7de34aa9d50cdad723b0b437dfdf2161150ca416fc68cad8e1c9"
    pkg "OpenZFSonOsX-#{version.csv.first}-EL.CAPITAN-10.11.pkg"
  else
    version "2.1.99,368"
    sha256 "c64f103b696218202df7f758cc9d4c9995f56b2108fa072eb4c03aef9457219c"
    pkg "OpenZFSonOsX-#{version.csv.first}-Catalina-10.15.pkg"
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.csv.second}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  livecheck do
    skip "No version information available"
  end

  conflicts_with cask: "openzfs"
  depends_on macos: ">= :el_capitan"
  depends_on arch: :intel

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
