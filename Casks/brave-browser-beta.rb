cask "brave-browser-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "beta" : "beta-arm64"

  version "1.34.54.0,134.54"

  if Hardware::CPU.intel?
    sha256 "32d64d09d9064dae5b37e331cae1e729fb6f8b0a19b1263e7fb337443837487d"
  else
    sha256 "51de41abfed999b2645b69a5d83e09965f215c7eb239fb8107e695b1cdf802fb"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.after_comma}/Brave-Browser-Beta-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Beta"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-beta/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Brave Browser Beta.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
