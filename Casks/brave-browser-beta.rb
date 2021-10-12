cask "brave-browser-beta" do
  version "1.31.82.0,131.82"

  if Hardware::CPU.intel?
    sha256 "ef64f71fc10c17c192a01f535e780d07e38bd988efbf2fdbe901318f1784ded4"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "1b3c547d8ae5d125d27055c4566ca1382e5cf4e9b5c142ce4d305c785cd32a92"

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
