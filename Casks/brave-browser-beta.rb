cask "brave-browser-beta" do
  arch, folder = Hardware::CPU.intel? ? ["x64", "beta"] : ["arm64", "beta-arm64"]

  version "1.39.96.0,139.96"

  if Hardware::CPU.intel?
    sha256 "2b0f74880df016599aed785c25399420ab78d7c6ccb28bb442928116ae86a624"
  else
    sha256 "4edc02cc35bb526689eeeeffcc7cfdf314f37e1d933d69d783ca1c6cae804ee5"
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
