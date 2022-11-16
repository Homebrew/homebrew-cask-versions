cask "iterm2-beta" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "3.5.0beta8"
  sha256 "9b55ffb343034ea3ec9c7ce59664a05e7c8572eb05a240d32e44b492cacd9b1a"

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  name "iTerm2"
  desc "Terminal emulator as alternative to Apple's Terminal app"
  homepage "https://www.iterm2.com/"

  livecheck do
    url "https://iterm2.com/appcasts/testing_modern.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  conflicts_with cask: [
    "iterm2",
    "iterm2-legacy",
    "iterm2-nightly",
  ]
  depends_on macos: ">= :mojave"

  app "iTerm.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*",
    "~/Library/Application Support/iTerm",
    "~/Library/Application Support/iTerm2",
    "~/Library/Caches/com.googlecode.iterm2",
    "~/Library/Preferences/com.googlecode.iterm2.plist",
    "~/Library/Saved Application State/com.googlecode.iterm2.savedState",
  ]
end
