cask "brave-browser-dev" do
  version "91.1.27.70,127.70"

  if Hardware::CPU.intel?
    sha256 "1ac17ba760dae481d43fdda6b622baf7445639f6596abc1964332b86a26002ee"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev/#{version.after_comma}/Brave-Browser-Dev-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "2141d1bb2d121cee2cdd2b5758c68522b5fb767167cec9a8b346740363b8d564"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev-arm64/#{version.after_comma}/Brave-Browser-Dev-universal.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev-arm64/appcast.xml"
      strategy :sparkle
    end
  end

  name "Brave Dev"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-dev/"

  auto_updates true

  app "Brave Browser Dev.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
