cask "textmate-preview" do
  version "2.0.23"
  sha256 "f8dba933209bd01070028892474bf0b72f36c673f7bcb8da5973f93ddc387420"

  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz",
      verified: "github.com/textmate/textmate/"
  name "TextMate"
  desc "General-purpose text editor"
  homepage "https://macromates.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TextMate.app"
  binary "#{appdir}/TextMate.app/Contents/MacOS/mate"

  uninstall quit: "com.macromates.TextMate"

  zap trash: [
    "~/Library/Application Support/TextMate",
    "~/Library/Caches/com.macromates.TextMate",
    "~/Library/Preferences/com.macromates.TextMate.plist",
    "~/Library/Saved Application State/com.macromates.TextMate.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macromates.textmate.sfl2",
  ]
end
