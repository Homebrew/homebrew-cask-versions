cask "textmate-preview" do
  version "2.0.22"
  sha256 "9c4da1730597e61682368593cb66530e3a9eae5c6dca5786a96f8be104bb7657"

  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz",
      verified: "github.com/textmate/textmate/"
  name "TextMate"
  desc "General-purpose text editor"
  homepage "https://macromates.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TextMate.app"
  binary "#{appdir}/TextMate.app/Contents/Resources/mate"

  uninstall quit: "com.macromates.TextMate"

  zap trash: [
    "~/Library/Application Support/TextMate",
    "~/Library/Caches/com.macromates.TextMate",
    "~/Library/Preferences/com.macromates.TextMate.plist",
    "~/Library/Saved Application State/com.macromates.TextMate.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macromates.textmate.sfl2",
  ]
end
