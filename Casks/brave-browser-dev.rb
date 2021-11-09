cask "brave-browser-dev" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "dev" : "dev-arm64"

  version "1.32.96.0,132.96"

  if Hardware::CPU.intel?
    sha256 "69b4f7817411ad925c85c1462ea3fda5a529465ce777147f1b889e57abae11ed"
  else
    sha256 "6a7c37e8e30a65559bc8f74b724ff4c7b028e747bcbabcf4873bbb53ecf68f1f"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.after_comma}/Brave-Browser-Dev-#{arch}.dmg",
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
