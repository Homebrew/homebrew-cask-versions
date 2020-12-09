cask "scribus-dev" do
  version "1.5.5"
  sha256 "42426b1bf21a1eafc5e5c442e81ca77cec65b83751c8fdcd4f9b258c47063f3b"

  url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version}/scribus-#{version}.dmg",
      verified: "sourceforge.net/scribus/"
  appcast "https://sourceforge.net/projects/scribus/rss?path=/scribus-devel"
  name "Scribus"
  homepage "https://www.scribus.net/"

  conflicts_with cask: "scribus"

  app "Scribus.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
