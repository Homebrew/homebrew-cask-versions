cask "tor-browser-alpha" do
  version "10.5a13"
  sha256 "697ed178f649ca5aba2d2259bb2fe959f21bd4fdd667e5b0cfe652fc2cce73be"

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_en-US.dmg"
  appcast "https://www.torproject.org/download/alpha/"
  name "Tor Browser"
  desc "Web browser focusing on security"
  homepage "https://www.torproject.org/"

  livecheck do
    url "https://www.torproject.org/download/alpha/"
    strategy :page_match
    regex(%r{href=.*?/TorBrowser-(\d+(?:.\d+)*)-osx64_.*\.dmg}i)
  end

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
