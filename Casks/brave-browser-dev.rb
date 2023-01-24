cask "brave-browser-dev" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "dev-arm64", intel: "dev"

  version "1.48.138.0,148.138"
  sha256 arm:   "695871b9f2a2c69015e48c18fb8875b4729163aea6803d1627f06dfe6853f485",
         intel: "325fabd5e41ddbaa7a4b9ab9f22bf22329e8991d70c5e54cde27dfc56b627573"

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
  depends_on macos: ">= :high_sierra"

  app "Brave Browser Dev.app"

  zap trash: [
    "~/Library/Application Support/brave",
    "~/Library/Preferences/com.electron.brave.plist",
    "~/Library/Saved Application State/com.electron.brave.savedState",
  ]
end
