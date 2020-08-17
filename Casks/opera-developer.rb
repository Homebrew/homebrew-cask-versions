cask "opera-developer" do
  version "72.0.3784.0"
  sha256 "52c885f6016b45db260d7db5b8a1951a33f42d714fea178fb51028376bb71e27"

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name "Opera Developer"
  homepage "https://www.opera.com/computer/beta"

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
