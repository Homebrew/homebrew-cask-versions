cask "safari-technology-preview" do
  if MacOS.version <= :catalina
    version "125,071-45899-20210526-3fe7359c-0f20-4850-b6ec-da9b197119c2"
    sha256 "63e4961fd0cca345b58128c0edb33627847d02b99a77613c54c0a89e6402d36e"
  else
    version "125,071-44527-20210526-93430244-0334-4fae-878d-56502a656003"
    sha256 "6ea830ec5c9101665e18d77f31a7f220a0fc8afc35b9ac036ee29d5ee3dbdd23"
  end

  url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
  name "Safari Technology Preview"
  desc "Web browser"
  homepage "https://developer.apple.com/safari/download/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      macos_version = MacOS.version.to_s.gsub(".", "\\.")
      release = page[%r{Release</p>\s*<p.*?>(\d+)</p>}i, 1]
      id = page[%r{href=.*?/([0-9a-f]+(?:-[0-9a-f]+)*)/SafariTechnologyPreview\.dmg.*?macOS\s*#{macos_version}\.}i, 1]
      "#{release},#{id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "Safari Technology Preview.pkg"

  uninstall delete: "/Applications/Safari Technology Preview.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl*",
    "~/Library/Caches/com.apple.SafariTechnologyPreview",
    "~/Library/Preferences/com.apple.SafariTechnologyPreview.plist",
    "~/Library/SafariTechnologyPreview",
    "~/Library/Saved Application State/com.apple.SafariTechnologyPreview.savedState",
    "~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.UserRequests.plist",
    "~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.WebFeedSubscriptions.plist",
    "~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview.plist",
    "~/Library/WebKit/com.apple.SafariTechnologyPreview",
  ]
end
