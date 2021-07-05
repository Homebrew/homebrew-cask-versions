cask "safari-technology-preview" do
  if MacOS.version <= :big_sur
    version "127,071-59915-20210701-7aeff054-50c5-4c98-b5b7-4fc517d8a696"
    sha256 "996c5937493b90ee993c41e28b158224a18b60c573d5ec741b2ad50853984481"
  else
    version "127,071-59909-20210701-e031945b-3e30-49fd-be61-b9aaa8e69e94"
    sha256 "d187e486ca8b6dc95b4a8bd0520b4b972639235b9bb05cb7765e2481742f257e"
  end

  url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
  name "Safari Technology Preview"
  desc "Web browser"
  homepage "https://developer.apple.com/safari/download/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)\s*<}i, 1]
      id = page[%r{
        href=.*?/(\h+(?:-\h+)*)/SafariTechnologyPreview\.dmg
        .*?macOS(?:\s|&nbsp;)*#{Regexp.escape(MacOS.version.to_s)}[\s.<]
      }ix, 1]
      "#{release},#{id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
