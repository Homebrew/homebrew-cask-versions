cask "brave-browser-dev" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "dev" : "dev-arm64"

  version "1.36.81.0,136.81"

  if Hardware::CPU.intel?
    sha256 "e33f92ba25f81f71aab0d1b4dd962f52d021a2a59903874c084829ded072b2e7"
  else
    sha256 "d55acf208df4a95f9f8e2063db78be2c1ce68c1dbd6c319f7cb841b72068dcae"
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
