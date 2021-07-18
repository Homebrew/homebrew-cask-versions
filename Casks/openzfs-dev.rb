cask "openzfs-dev" do
  if MacOS.version <= :catalina
    version "2.1.0rc2,331"
    sha256 "34e1d91e02e908b9b4c7d1f6a0936c3660f6f59367d18eb445a9bbbbd5f9e506"
    pkg "OpenZFSonOsX-#{version.before_comma}-Catalina-10.15.pkg"
  elsif Hardware::CPU.intel?
    version "2.1.0rc2,332"
    sha256 "204adbe293006106ea89a27024cb97d9e5438c972bd8e749feff9df455138fe2"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11.pkg"
  else
    version "2.1.0rc2,330"
    sha256 "38e82456f3c2dc0ff2db65fce56b0473e7183f96023a1f5d7ab8530fd0a90ed7"
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
