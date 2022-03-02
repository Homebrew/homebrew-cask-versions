cask "brave-browser-beta" do
  arch, folder = Hardware::CPU.intel? ? ["x64", "beta"] : ["arm64", "beta-arm64"]

  version "1.37.77.0,137.77"

  if Hardware::CPU.intel?
    sha256 "0e9a00ea409b8024ec924aa644ac79c7241b851d25c5f9e15facd6fbbb316edd"
  else
    sha256 "3fb1dd772c859d9b3e9644de31063dec86e7a51b38a1ea4d139e0e5791aece1e"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.csv.second}/Brave-Browser-Beta-#{arch}.dmg",
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
