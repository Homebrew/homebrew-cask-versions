cask "openzfs-dev" do
  on_arm do
    on_monterey :or_older do
      arch arm: "Monterey-12-arm64"
      version "2.1.6rc7,422"
      sha256 "14e4bc3ff6fe8d3ad7ecc6674630d76a26d8e71c005331676b725ee76d968b66"
    end
    on_ventura :or_newer do
      arch arm: "Ventura-13-arm64"
      version "2.1.6rc7,421"
      sha256 "8b29505e2f6a28a305fd5a0bebfbbe71c49a2f9158ca304327c7780ab1e4186c"
    end
  end
  on_intel do
    arch intel: "Catalina-10.15"

    version "2.1.6rc7,420"
    sha256 "6570087af4cda8efd47473c341852d10583e2357f221986745e9d7a407c111c4"
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.csv.second}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  livecheck do
    url "https://openzfsonosx.org/forum/viewforum.php?f=20"
    regex(/viewtopic.*t=(\d+).*OpenZFSonOsX[._-]v?(\d+(?:(?:\.|(?:rc))\d+)+)[< "]/i)
    strategy :page_match do |page|
      match = page.scan(regex)
      next if match.blank?

      post_id, version = match.first

      post_url = "https://openzfsonosx.org/forum/viewtopic.php?f=20&t=#{post_id}"
      download_id_regex = /href=.*file.php\?id=(\d+).+OpenZFSonOsX[._-]v?#{version}-#{arch}/i

      download_id = Homebrew::Livecheck::Strategy::PageMatch
                    .find_versions(url: post_url, regex: download_id_regex)[:matches].values.first
      next if download_id.blank?

      "#{version},#{download_id}"
    end
  end

  conflicts_with cask: "openzfs"
  depends_on macos: ">= :catalina"

  pkg "OpenZFSonOsX-#{version.csv.first}-#{arch}.pkg"

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
