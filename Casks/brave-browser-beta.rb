cask "brave-browser-beta" do
  version "90.1.25.60,125.60"

  if Hardware::CPU.intel?
    sha256 "83d494cb7cfa5a7b4f4faacdd490bd84d15cd051e46f13517bd6224fb28cdc57"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/beta/#{version.after_comma}/Brave-Browser-Beta-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/beta/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "690f757a8a146de148fdd03f41bdec9673d66f2ab5f6be897e784948c1668854"

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
