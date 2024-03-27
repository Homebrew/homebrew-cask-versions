cask "zed-preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.129.1"
  sha256 arm:   "5dab588c9851f28169b8b7d5fa3bfb0ab0d13a53ada663b30d01d8ebec000dd6",
         intel: "7d0e5e1d655426dfce1c24c634a99c75ae77f211f150e7efcc96606cea5ed89b"

  url "https://zed.dev/api/releases/preview/#{version}/Zed-#{arch}.dmg"
  name "Zed Preview"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://zed.dev/releases/preview"
    regex(%r{href=.*?/preview/(\d+(?:\.\d+)+)/Zed(?:-aarch64)?\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zed Preview.app"
  binary "#{appdir}/Zed Preview.app/Contents/MacOS/cli", target: "zed-preview"

  zap trash: [
    "~/.config/Zed",
    "~/Library/Application Support/Zed",
    "~/Library/Logs/Zed",
    "~/Library/Saved Application State/dev.zed.Zed.savedState",
  ]
end
