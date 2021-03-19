cask "opera-developer" do
  version "76.0.3995.0"
  sha256 "dc1de5d8d92208a009dcc0b3972c08932ec6de4d88adeabecbd4b60704ede39b"

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name "Opera Developer"
  homepage "https://www.opera.com/computer/beta"

  livecheck do
    url "https://download.opera.com/download/get/?partner=www&opsys=MacOS&product=Opera+developer"
    strategy :page_match
    regex(/Opera_Developer_(\d+(?:\.\d+)*)_Setup\.dmg/)
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
