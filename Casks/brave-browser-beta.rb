cask "brave-browser-beta" do
  arch, folder = Hardware::CPU.intel? ? ["x64", "beta"] : ["arm64", "beta-arm64"]

  version "1.42.78.0,142.78"

  if Hardware::CPU.intel?
    sha256 "14de511ec89d9db82ad54b1f93fda700d835de3d1c248ee4cbb919e7c190dd95"
  else
    sha256 "f0b9b81b50d9951bcca236f73c7e3dfa6ba397c1e767ba2596adbd342f8063ef"
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
