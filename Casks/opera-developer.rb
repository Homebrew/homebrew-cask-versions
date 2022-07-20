cask "opera-developer" do
  version "91.0.4484.0"
  sha256 "64c63baf9a73f56432ee08dc36d039da84f6958ee9af96e63f05b4f154f46588"

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name "Opera Developer"
  desc "Web browser"
  homepage "https://www.opera.com/computer/beta"

  livecheck do
    url "https://get.geo.opera.com/pub/opera-developer/"
    regex(/href="(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "Opera Developer.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.OperaDeveloper",
    "~/Library/Caches/com.operasoftware.OperaDeveloper",
    "~/Library/Cookies/com.operasoftware.OperaDeveloper.binarycookies",
    "~/Library/Preferences/com.operasoftware.OperaDeveloper.plist",
    "~/Library/Saved Application State/com.operasoftware.OperaDeveloper.savedState",
  ]
end
