cask "iterm2-beta" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "3.4.2beta2"
  sha256 "905dcd0f9ac095f0f0381866ec483fd93baa7588dd2c581f76ccd7e07e942b2e"

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast "https://iterm2.com/appcasts/testing_modern.xml"
  name "iTerm2"
  desc "Terminal emulator as alternative to Apple's Terminal app"
  homepage "https://www.iterm2.com/"

  auto_updates true
  conflicts_with cask: "iterm2"
  depends_on macos: ">= :mojave"

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
