cask "qbittorrent-lt20" do
  version "4.5.4"
  sha256 "36c9218feeb081d740b46ef9a3e2d1084482af39ba67f8a0166e345bd633a26b"

  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}_lt20.dmg",
      verified: "downloads.sourceforge.net/qbittorrent/qbittorrent-mac/"
  name "qBittorrent"
  desc "Edition of qBitorrent based on libtorrent-rasterbar 2.0.x"
  homepage "https://www.qbittorrent.org/"

  livecheck do
    url "https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac"
    regex(/qbittorrent[._-]v?(\d+(?:\.\d+)+)[._-]lt20\.dmg/i)
    strategy :page_match
  end

  conflicts_with cask: "qbittorrent"
  depends_on macos: ">= :mojave"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "qbittorrent.app", target: "qBittorrent.app"

  zap trash: [
    "~/.config/qBittorrent",
    "~/Library/Application Support/qBittorrent",
    "~/Library/Caches/qBittorrent",
    "~/Library/Preferences/org.qbittorrent.qBittorrent.plist",
    "~/Library/Preferences/qBittorrent",
    "~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState",
  ]
end
