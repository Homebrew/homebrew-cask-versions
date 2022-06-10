cask "brave-browser-beta" do
  arch, folder = Hardware::CPU.intel? ? ["x64", "beta"] : ["arm64", "beta-arm64"]

  version "1.40.91.0,140.91"

  if Hardware::CPU.intel?
    sha256 "0b51e604ea63ecfe0d81791301d3e6146feef0010f430263e7fe33b7626e4997"
  else
    sha256 "725e93d514d2085013680e50c6a0b6f941bed8b0f69ba160002fbd765c2be180"
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
