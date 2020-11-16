cask "iterm2-legacy" do
  # NOTE: "2" is not a version number, but indicates a different vendor
  version "2.1.4"
  sha256 "1062b83e7808dc1e13362f4a83ef770e1c24ea4ae090d1346b49f6196e9064cd"

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  name "iTerm2"
  homepage "https://www.iterm2.com/"

  auto_updates true
  conflicts_with cask: "iterm2"

  app "iTerm.app"

  zap trash: "~/Library/Preferences/com.googlecode.iterm2.plist"
end
