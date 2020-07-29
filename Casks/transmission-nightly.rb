cask "transmission-nightly" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://build.transmissionbt.com/job/trunk-mac/lastSuccessfulBuild/artifact/release/"
    file = URI(base_url).open.read.scan(/href="([^"]+.dmg)"/).flatten.first
    "#{base_url}#{file}"
  end
  name "Transmission"
  homepage "https://transmissionbt.com/"

  conflicts_with cask: "transmission"

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
