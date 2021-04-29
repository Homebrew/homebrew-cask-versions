cask "brave-browser-dev" do
  version "90.1.24.77,124.77"

  if Hardware::CPU.intel?
    sha256 "012502180648ea94bcaa52678385c5bf9fb70c4e1d382f341cde487be83bbde4"

    url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/dev/#{version.after_comma}/Brave-Browser-Dev-x64.dmg",
        verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"

    livecheck do
      url "https://updates.bravesoftware.com/sparkle/Brave-Browser/dev/appcast.xml"
      strategy :sparkle
    end
  else
    sha256 "139f4e7f4845ad65e4e20d635f4a69bdf02f3cd7ef686265a92a22dbc945e92a"

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
