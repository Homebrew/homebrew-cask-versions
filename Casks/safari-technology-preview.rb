cask "safari-technology-preview" do
  if MacOS.version <= :big_sur
    version "143,002-86656-20220407-CC5B940B-17D8-47CA-8EEF-5B2ECA3240B0"
    sha256 "b86bbbe2d692e5b5adf87949e12add27dc50f20615739339f77383756a4d2707"
  else
    version "144,012-00510-20220502-D331135A-118B-4519-B59D-B19724E80FB9"
    sha256 "10961427c5be50a98a5b40b98498ee582fb645b72f0ee4cd5e33a1ca9e2eb992"
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
  depends_on macos: ">= :big_sur"

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
