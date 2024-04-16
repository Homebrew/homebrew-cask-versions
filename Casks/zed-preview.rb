cask "zed-preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.131.5"
  sha256 arm:   "5c320c3e4837d96def126bc0acdaff854f8fadceb0fb43d9e9ca7d3bfbcf79bd",
         intel: "58fd54dc9441250f5e0db8e009ac112c1f7d02e72a68dae6fc1ca2bc20adc4aa"

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
    "~/.config/zed",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.zed.zed-preview.sfl*",
    "~/Library/Application Support/Zed",
    "~/Library/Caches/dev.zed.Zed-Preview",
    "~/Library/HTTPStorages/dev.zed.Zed-Preview",
    "~/Library/Logs/Zed",
    "~/Library/Preferences/dev.zed.Zed-Preview.plist",
    "~/Library/Saved Application State/dev.zed.Zed-Preview.savedState",
  ]
end
