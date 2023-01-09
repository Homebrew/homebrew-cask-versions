cask "transmission-beta" do
  version "4.0.0-beta.3,r634b1e8fc1"
  sha256 "729d7f276894b0e90a8f0fef843cda5b65a5fe855155429989631825bc1e4b3f"

  url "https://github.com/transmission/transmission/releases/download/#{version.csv.first}/Transmission-#{version.csv.first}%2B#{version.csv.second}.dmg",
      verified: "github.com/transmission/transmission/releases/"
  name "Transmission"
  desc "Open-source BitTorrent client"
  homepage "https://transmissionbt.com/"

  livecheck do
    url "https://transmissionbt.com/download"
    strategy :page_match do |page|
      page.scan(/[Tt]ransmission-(\d+(?:\.\d+)+[_-]beta\.\d+(?:\+r?[a-f0-9]+)?)\.dmg/).map do |match|
        match&.first&.gsub(/\+/, ",")
      end
    end
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
