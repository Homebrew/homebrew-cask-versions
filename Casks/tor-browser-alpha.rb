cask "tor-browser-alpha" do
  version "10.5a8"
  sha256 "acca7ecd182d1e3edc40378f8c9991564d9e0251eb74b27a76ff715cd31733db"

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  appcast "https://www.torproject.org/download/alpha/"
  name "Tor Browser"
  desc "Web browser focusing on security"
  homepage "https://www.torproject.org/"

  auto_updates true
  conflicts_with cask: "tor-browser"

  app "Tor Browser.app"

  zap trash: [
    "~/Library/Application Support/TorBrowser-Data",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*",
    "~/Library/Preferences/org.mozilla.tor browser.plist",
    "~/Library/Preferences/org.torproject.torbrowser.plist",
    "~/Library/SavedApplicationState/org.torproject.torbrowser.savedState",
  ]
end
