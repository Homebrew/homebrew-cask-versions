cask "brave-browser-nightly" do
  version :latest
  sha256 :no_check

  url do
    appcast = "https://updates.bravesoftware.com/sparkle/Brave-Browser/nightly/appcast.xml"
    result = curl_output("--fail", "--silent", appcast)
    result.assert_success!
    result.stdout[/enclosure url="([^"]+.dmg)"/, 1]
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
