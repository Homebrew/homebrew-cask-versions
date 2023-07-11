cask "opera-developer" do
  version "102.0.4857.0"
  sha256 "9e727bac6af8ad1a7665c2725c70d42f698900f8dba95489a334957654a69543"

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name "Opera Developer"
  desc "Web browser"
  homepage "https://www.opera.com/download#developer"

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
