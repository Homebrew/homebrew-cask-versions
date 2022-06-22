cask "safari-technology-preview" do
  if MacOS.version <= :monterey
    version "147,012-15389-20220621-FA8B8AC9-0442-432C-80B6-6016AB193FCA"
    sha256 "481f7f5789724e60074556647b87ca9354836a755f4a683eac59853d61173ab3"
  else
    version "147,012-30324-20220621-99D72AEC-A0E2-4B48-8AC0-B567E3FD046B"
    sha256 "740819fc60a4bed316e8581d13ee659a32a2187485d72676ad1ccf9f6173c942"
  end

  url "https://secure-appldnld.apple.com/STP/#{version.csv.second}/SafariTechnologyPreview.dmg"
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
  depends_on macos: ">= :monterey"

  pkg "Safari Technology Preview.pkg"

  uninstall quit:      "com.apple.SafariTechnologyPreview",
            launchctl: "com.apple.SafariTechnologyPreview.History",
            delete:    "/Applications/Safari Technology Preview.app"

  zap trash: [
    "~/Library/Application Scripts/com.apple.SafariTechnologyPreview.CacheDeleteExtension",
    "~/Library/Application Scripts/com.apple.SafariTechnologyPreview.DiagnosticExtension",
    "~/Library/Application Scripts/com.apple.SafariTechnologyPreview",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl*",
    "~/Library/Caches/com.apple.SafariTechnologyPreview",
    "~/Library/Containers/com.apple.SafariTechnologyPreview.CacheDeleteExtension",
    "~/Library/Containers/com.apple.SafariTechnologyPreview.DiagnosticExtension",
    "~/Library/Containers/com.apple.SafariTechnologyPreview",
    "~/Library/Preferences/com.apple.SafariTechnologyPreview.plist",
    "~/Library/Preferences/com.apple.SafariTechnologyPreview.SandboxBroker.plist",
    "~/Library/SafariTechnologyPreview",
    "~/Library/Saved Application State/com.apple.SafariTechnologyPreview.savedState",
    "~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.UserRequests.plist",
    "~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview-com.apple.Safari.WebFeedSubscriptions.plist",
    "~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview.plist",
    "~/Library/WebKit/com.apple.SafariTechnologyPreview",
  ]
end
