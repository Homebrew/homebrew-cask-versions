cask "textmate-preview" do
  version "2.0.21"
  sha256 "df1e8ecca2931f2138ccc241990be51e51875b9f3b743608c7750a1e992a13ad"

  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz",
      verified: "github.com/textmate/textmate/"
  appcast "https://github.com/textmate/textmate/releases.atom"
  name "TextMate"
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
