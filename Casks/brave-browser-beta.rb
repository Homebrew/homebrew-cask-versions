cask "brave-browser-beta" do
  arch, folder = Hardware::CPU.intel? ? ["x64", "beta"] : ["arm64", "beta-arm64"]

  version "1.38.93.0,138.93"

  if Hardware::CPU.intel?
    sha256 "e3520094e98d5a1296decb82715eee544f6bf003dfa97b63c585bff5b0edd3b7"
  else
    sha256 "67488e42ba520edd5d2ad89fa4ba1ca72a7181fae75e95922014f737e1e99680"
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
