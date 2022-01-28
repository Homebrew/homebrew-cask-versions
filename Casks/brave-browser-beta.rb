cask "brave-browser-beta" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "beta" : "beta-arm64"

  version "1.36.75.0,136.75"

  if Hardware::CPU.intel?
    sha256 "4a04c28232465c7f9484cd38051034d5debd95de7e3732c7757fd01f3881aa14"
  else
    sha256 "5833fddd906a6a0b98b00a98b29225c3f54ad7c96e80cff1d8fc3b49ba9ef9b2"
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
