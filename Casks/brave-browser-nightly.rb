cask "brave-browser-nightly" do
  version :latest
  sha256 :no_check

  url "https://updates.bravesoftware.com/sparkle/Brave-Browser/nightly/appcast.xml" do |page|
    [page[/enclosure url="([^"]+.dmg)"/, 1], { verified: "bravesoftware.com" }]
  end
  name "Brave Nightly"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-nightly/"

  app "Brave Browser Nightly.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
