cask "safari-technology-preview" do
  if MacOS.version <= :big_sur
    version "126,071-49115-20210616-CFF65F23-A558-4BE9-BC39-636914359EBC"
    sha256 ""
  else
    version "126,001-66930-20210616-c91fc8a5-bfeb-47ec-80c2-0d54c6ebbcee"
    sha256 "d7547c77c709db6f551a5be1c60fcdff3b116579aa24038ebe2936003e8c3af4"
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
