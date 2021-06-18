cask "brave-browser-beta" do
  version "91.1.26.60,126.60"

  if Hardware::CPU.intel?
    sha256 "1939eb8438b1ae1d1ea90458c570b047220ae166c50048d75a5c3cfff049bfac"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "0d88eb9fd95fa46c96667feedc6b7fd6ad2dac60ffb570a284474802ae2dd6a9"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta-arm64/#{version.after_comma}/Brave-Browser-Beta-universal.dmg",
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
