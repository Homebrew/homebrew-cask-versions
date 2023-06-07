cask "iterm2-nightly" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "3_5_20230605"
  sha256 "c86df3935830d16879e79d0422e0f5c14981e42fa68078e60122085626ef210e"

  url "https://www.iterm2.com/nightly/iTerm2-#{version}-nightly.zip"
  name "iTerm2"
  desc "Terminal emulator as alternative to Apple's Terminal app"
  homepage "https://www.iterm2.com/"

  livecheck do
    url "https://www.iterm2.com/nightly/latest"
    strategy :header_match
  end

  conflicts_with cask: [
    "iterm2",
    "iterm2-beta",
    "iterm2-legacy",
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
