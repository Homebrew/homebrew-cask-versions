cask "brave-browser-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "beta" : "beta-arm64"

  version "1.33.77.0,133.77"

  if Hardware::CPU.intel?
    sha256 "fc4d42b2306f3670cd7e55cbc637e5d0aba1d5f9b82e5ba6e7a16a35e4d9132b"
  else
    sha256 "ec4a8caf92a2d5ec699f6aca70dcbe12995f30badb7c08f5666b1d1a902376c9"
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
