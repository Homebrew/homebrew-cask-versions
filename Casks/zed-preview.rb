cask "zed-preview" do
  version "0.120.3"
  sha256 "2c44a02b7667a324933e779488c3c70c949089741ee387b39cda463dd3f3558e"

  url "https://zed.dev/api/releases/preview/#{version}/Zed.dmg"
  name "Zed Preview"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://zed.dev/releases/preview"
    regex(%r{href=.*?/preview/(\d+(?:\.\d+)+)/Zed.dmg}i)
  end

  auto_updates true
  conflicts_with cask: "zed"
  depends_on macos: ">= :catalina"

  app "Zed Preview.app"
  binary "#{appdir}/Zed Preview.app/Contents/MacOS/cli", target: "zed"

  zap trash: [
    "~/.config/Zed",
    "~/Library/Application Support/Zed",
    "~/Library/Logs/Zed",
    "~/Library/Saved Application State/dev.zed.Zed.savedState",
  ]
end
