cask "brave-browser-dev" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "dev" : "dev-arm64"

  version "1.38.91.0,138.91"

  if Hardware::CPU.intel?
    sha256 "7b0f3df0c425f0093deb9e9b8cd66c693c8afbcf53840e4fcd024ea2b2cd972a"
  else
    sha256 "e74be5c06c9e27f482b6e811b58708b1e3256c0f44db9c646ae69a5e0562a006"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.csv.second}/Brave-Browser-Dev-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Dev"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-dev/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Brave Browser Dev.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
