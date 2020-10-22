cask "tor-browser-alpha" do
  version "10.5a2"
  sha256 "cf5c39d8a7b7e76a00bdab3d7bc6e66126f863f887dfd6e8e73ab116981dacfb"

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
