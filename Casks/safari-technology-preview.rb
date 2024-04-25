cask "safari-technology-preview" do
  # when adjusting the on_{os} scoping, also update the livecheck regex
  on_ventura :or_older do
    version "192,052-85183-20240410-59ECDB95-58C5-47E7-B670-E4A152715665"
    sha256 "e6db1fbc3342d4d1f6d3ebc092dc318cf2ad0310429edaf7cb6620cd9976518b"

    livecheck do
      url :homepage
      regex(%r{
        href=.*?/([^/]+)/Safari(?:%20)?Technology(?:%20)?Preview\.dmg
        .*?macOS(?:\s|&nbsp;)*13[\s.<]
      }ix)
      strategy :page_match do |page, regex|
        release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)\s*<}i, 1]
        id = page[regex, 1]
        "#{release},#{id}"
      end
    end
  end
  on_sonoma :or_newer do
    version "193,052-88763-20240424-6C822EBC-3B0C-4BAA-8004-10D95319E259"
    sha256 "41e63d01eee76f08bdd717af75d9cf4c04100e1b5f160bd2d141b37e6bae07cd"

    livecheck do
      url :homepage
      regex(%r{
        href=.*?/([^/]+)/Safari(?:%20)?Technology(?:%20)?Preview\.dmg
        .*?macOS(?:\s|&nbsp;)*14[\s.<]
      }ix)
      strategy :page_match do |page, regex|
        release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)\s*<}i, 1]
        id = page[regex, 1]
        "#{release},#{id}"
      end
    end
  end

  url "https://secure-appldnld.apple.com/STP/#{version.csv.second}/SafariTechnologyPreview.dmg"
  name "Safari Technology Preview"
  desc "Web browser"
  homepage "https://developer.apple.com/safari/resources/"

  auto_updates true
  depends_on macos: ">= :ventura"

  pkg "Safari Technology Preview.pkg"

  uninstall launchctl: "com.apple.SafariTechnologyPreview.History",
            quit:      "com.apple.SafariTechnologyPreview",
            delete:    "/Applications/Safari Technology Preview.app"

  zap trash: [
    "~/Library/Application Scripts/com.apple.SafariTechnologyPreview*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl*",
    "~/Library/Caches/com.apple.SafariTechnologyPreview",
    "~/Library/Containers/com.apple.SafariTechnologyPreview*",
    "~/Library/Preferences/com.apple.SafariTechnologyPreview*",
    "~/Library/SafariTechnologyPreview",
    "~/Library/Saved Application State/com.apple.SafariTechnologyPreview.savedState",
    "~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview*",
    "~/Library/WebKit/com.apple.SafariTechnologyPreview",
  ]
end
