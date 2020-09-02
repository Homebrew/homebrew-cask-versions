cask "iterm2-beta" do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version "3.4.0beta5"
  sha256 "a73381af235ba66645cb9d667e8bfae77c3770623e17aa57099c5e9aaa9ddf90"

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast "https://iterm2.com/appcasts/testing_modern.xml"
  name "iTerm2"
  homepage "https://www.iterm2.com/"

  auto_updates true
  conflicts_with cask: "iterm2"
  depends_on macos: ">= :sierra"

  app "iTerm.app"

  zap trash: [
    "~/Library/Application Support/iTerm",
    "~/Library/Application Support/iTerm2",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*",
    "~/Library/Caches/com.googlecode.iterm2",
    "~/Library/Preferences/com.googlecode.iterm2.plist",
    "~/Library/Saved Application State/com.googlecode.iterm2.savedState",
  ]
end
