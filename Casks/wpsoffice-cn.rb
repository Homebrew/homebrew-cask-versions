cask "wpsoffice-cn" do
  version "3.3.1,5149"
  sha256 :no_check

  url "https://package.mac.wpscdn.cn/mac_wps_pkg/#{version.before_comma}/WPS_Office_#{version.before_comma}(#{version.after_comma}).dmg",
      verified: "package.mac.wpscdn.cn/"
  name "WPS Office China Edition"
  name "WPS Office 中国版"
  desc "All-in-one office suite"
  homepage "https://www.wps.cn/product/wpsmac/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/WPS_Office_(\d+(?:\.\d+)*)\((\d+)\)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  conflicts_with cask: "wpsoffice"
  depends_on macos: ">= :sierra"

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac",
    "~/Library/Saved Application State/com.kingsoft.wpsoffice.mac.savedState",
    "/private/var/folders/*/*/*/com.kingsoft.wpsoffice.mac",
    "/private/var/folders/*/*/*/com.apple.WebKit.Networking+com.kingsoft.wpsoffice.mac",
    "/private/var/folders/*/*/*/com.apple.WebKit.WebContent+com.kingsoft.wpsoffice.mac",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac",
    "~/Library/Group Containers/*.wpsoffice",
  ]
end
