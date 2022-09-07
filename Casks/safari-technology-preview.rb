cask "safari-technology-preview" do
  if MacOS.version <= :monterey
    version "153,012-62814-20220906-01A831FD-C2C3-4FB9-A6B4-CAB80959983C"
    sha256 "af800ee1188d7b1b4f0f31d42e69f50cd63d637e13a804c9079f8b6f0d111154"
  else
    version "153,012-62815-20220906-049A61C0-D25F-401F-B6D4-1A1DB3BFA91C"
    sha256 "4d884a8901b56793c8bb6c5370acb1e8c6046249786b4bafc2becdaa5de3da8b"
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
