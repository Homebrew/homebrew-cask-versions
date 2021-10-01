cask "safari-technology-preview" do
  if MacOS.version <= :big_sur
    version "133,002-07112-20210929-4d3827b5-bcc2-467f-9bea-c99639cc1cda"
    sha256 "9b9578f186e307d1a95765c35b015f61c6ea7f0b06fc305afbf8c96b02283961"
  else
    version "133,002-06914-20210929-5ee8c8d9-eda3-4302-b5f7-85c516c1416a"
    sha256 "a60eaee39ffea03ee8be7d1bd2da26fe81962d0d591584fa461f755bf411b3f5"
  end

  url "https://secure-appldnld.apple.com/STP/#{version.after_comma}/SafariTechnologyPreview.dmg"
  name "Safari Technology Preview"
  desc "Web browser"
  homepage "https://developer.apple.com/safari/download/"

  livecheck do
    url :homepage
    regex(%r{
      href=.*?/(\h+(?:-\h+)*)/SafariTechnologyPreview\.dmg
      .*?macOS(?:\s|&nbsp;)*#{Regexp.escape(MacOS.version.to_s)}[\s.<]
    }ix)
    strategy :page_match do |page, regex|
      release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)\s*<}i, 1]
      id = page[regex, 1]
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
