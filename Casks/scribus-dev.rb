cask "scribus-dev" do
  version "1.5.7"
  sha256 "f5b660aff6b8ffdef74396d56e62656779d9ec9c2ab3b02af2635d71274dfd32"

  url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version}/scribus-#{version}.dmg",
      verified: "sourceforge.net/scribus/"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  conflicts_with cask: "scribus"

  app "Scribus.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
