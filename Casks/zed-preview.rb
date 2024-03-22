cask "zed-preview" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.128.1"
  sha256 arm:   "ce30f3ea631d813b4791d8038f635864863d356fcb4921d96c5f77f82cf8af5d",
         intel: "c45ef6e04786632dbf885276a34f850653ed99a6414b4f6ad378eb53b9367cfc"

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
