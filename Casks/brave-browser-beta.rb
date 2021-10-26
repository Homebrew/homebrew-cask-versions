cask "brave-browser-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "beta" : "beta-arm64"

  version "1.32.81.0,132.81"

  if Hardware::CPU.intel?
    sha256 "1a41fd5fc81fe5c12aefbb2e7be524d1d7146072db7b29e77b3087a9f0366a0d"
  else
    sha256 "cccf5a30f04fba1cd279fc5a7d0d07ed9bff8d7a1baf5814c9aae3b8f23a816a"
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
