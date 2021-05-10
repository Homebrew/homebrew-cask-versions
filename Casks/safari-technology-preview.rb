cask "safari-technology-preview" do
  if MacOS.version <= :catalina
    version "123,071-23564-20210330-f6b89a7f-4800-4af7-93cb-0dbb005db0e8"
    sha256 "16e7ed118cd3e839d48c7c68827c59fd2f9d2d3341514d7b301fb5d8c30d55fb"
  else
    version "124,071-40182-20210507-d07bb1e1-ffd5-4fc9-ab00-64fc3ca17bcd"
    sha256 "d69043deee786a304aea2dfaffcce5f9a5f0dd3e77ba427deba47db306241616"
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
