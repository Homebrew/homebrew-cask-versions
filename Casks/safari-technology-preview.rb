cask "safari-technology-preview" do
  on_ventura :or_older do
    version "189,052-57195-20240220-0EF06E2C-40BA-42C2-BC29-3AB1293D8C49"
    sha256 "7b6608c98eb05a4703ec976e049073db038202262daa16e03ec166eed320e108"
  end
  on_sonoma :or_newer do
    version "190,052-60096-20240306-D7F49226-65E4-4804-B8FA-D0C672DEAFD1"
    sha256 "226337589817418cb788e809206956ac007086f2604ca006345ce184f14eb35f"
  end

  url "https://secure-appldnld.apple.com/STP/#{version.csv.second}/SafariTechnologyPreview.dmg"
  name "Safari Technology Preview"
  desc "Web browser"
  homepage "https://developer.apple.com/safari/resources/"

  livecheck do
    url :homepage
    regex(%r{
      href=.*?/([^/]+)/Safari(?:%20)?Technology(?:%20)?Preview\.dmg
      .*?macOS(?:\s|&nbsp;)*#{Regexp.escape(MacOS.version.to_s)}[\s.<]
    }ix)
    strategy :page_match do |page, regex|
      release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)\s*<}i, 1]
      id = page[regex, 1]
      "#{release},#{id}"
    end
  end

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
