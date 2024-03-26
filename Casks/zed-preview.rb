cask "zed-preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.128.3"
  sha256 arm:   "20a63eea592f264f2baeea9cf202eee10119369f20fc55d3ca9a531eaef1dc42",
         intel: "d02876c62b227498b552ba6c259507e45bac11d03a14de30d513d93d3da3be2f"

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
