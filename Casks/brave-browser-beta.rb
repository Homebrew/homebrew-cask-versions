cask "brave-browser-beta" do
  version "1.27.91.0,127.91"

  if Hardware::CPU.intel?
    sha256 "15379ce2a5209929c01b9f75e15e906e241362aa25c6eec9d7f113216b5098bd"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "2ecea766deebe1ec16d1010c163b02b5086cf2c91e0231a67f03d2a4900b123f"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta-arm64/#{version.after_comma}/Brave-Browser-Beta-arm64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta-arm64/appcast.xml"
      strategy :sparkle
    end
  end

  name "Brave Beta"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-beta/"

  auto_updates true

  app "Brave Browser Beta.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
