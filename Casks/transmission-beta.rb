cask "transmission-beta" do
  version "4.0.0-beta.2"
  sha256 "dd9a7358be34ed28a397742d983eb5be851b103c4204b775a120a478ef7a967c"

  url "https://github.com/transmission/transmission/releases/download/#{version}/Transmission-#{version}.dmg",
      verified: "github.com/transmission/transmission/releases/"
  name "Transmission"
  desc "Open-source BitTorrent client"
  homepage "https://transmissionbt.com/"

  livecheck do
    url :url
    regex(/^(\d+(?:\.\d+)+[_-]beta\.\d+)$/i)
  end

  auto_updates true
  conflicts_with cask: [
    "transmission",
    "homebrew/cask-versions/transmission-nightly",
  ]

  app "Transmission.app"

  zap trash: [
    "~/Library/Application Support/Transmission",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Transmission Help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/org.m0k.transmission.help",
    "~/Library/Caches/org.m0k.transmission",
    "~/Library/Cookies/org.m0k.transmission.binarycookies",
    "~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist",
    "~/Library/Preferences/org.m0k.transmission.plist",
    "~/Library/Saved Application State/org.m0k.transmission.savedState",
  ]
end
