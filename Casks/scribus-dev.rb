cask "scribus-dev" do
  version "1.5.6.1"
  sha256 "5a79350884a405e223789bc65038d7c40f41c97bf352e8da0d96a9444a0bddd5"

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
