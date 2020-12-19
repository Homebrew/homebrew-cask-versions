cask "openzfs-dev" do
  version "2.0.0"

  if MacOS.version <= :mojave
    file_id="221"
    url "https://openzfsonosx.org/forum/download/file.php?id=#{file_id}"
    sha256 "55a44ed37f76eca89b938f91315d15ae053dae74c961e65b34079b1e17dccb48"
  elsif MacOS.version <= :catalina
    file_id="219"
    url "https://openzfsonosx.org/forum/download/file.php?id=#{file_id}"
    sha256 "304ea1ddc474b27827721b81b1718aaeba317f4d0657b3a1b994f224de151d92"
  else
    file_id="220"
    url "https://openzfsonosx.org/forum/download/file.php?id=#{file_id}"
    sha256 "a11cc3c3b43012d627fe3fba9728252385feff6da910b5b06d302e49c5424207"
  end

  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  conflicts_with cask: "openzfs"
  depends_on macos: ">= :mojave"

  pkg "OpenZFSonOsX.pkg"

  preflight do
    FileUtils.ln_sf(staged_path/"file.php", staged_path/"OpenZFSonOsX.pkg")
  end

  uninstall_preflight do
    system "sudo", "/usr/local/bin/zpool", "export", "-af"
    system "sudo", "/bin/launchctl", "unload", "/Library/LaunchDaemons/org.openzfsonosx.zed.plist"
    system "sudo", "/sbin/kextunload", "-b", "net.lundman.zfs"
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
