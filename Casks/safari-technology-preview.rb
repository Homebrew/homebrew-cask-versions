cask "safari-technology-preview" do
  if MacOS.version <= :monterey
    version "152,012-56204-20220824-0BA2352E-A387-4BF9-964C-59A63B09E501"
    sha256 "030bebfced9e959ffe58e64c0bfb93d415c1dc89c481f1b1a439688ebc5ee8c6"
  else
    version "151,012-54345-20220811-0BE61FB3-532C-4427-BD08-CEDF2417D59C"
    sha256 "b0edf41293cc483ca3c00e9abbc19a26ba4d911f8745a42d2b63ade727ba6d71"
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
