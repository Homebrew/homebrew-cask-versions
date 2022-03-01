cask "visual-studio-code-insiders" do
  version :latest
  sha256 :no_check

  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  url "https://code.visualstudio.com/sha/download?build=insider&os=#{arch}"
  name "Microsoft Visual Studio Code"
  name "Visual Studio Code Insiders"
  desc "Code editor"
  homepage "https://code.visualstudio.com/insiders"

  app "Visual Studio Code - Insiders.app"
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code", target: "code-insiders"

  zap trash: [
    "~/.vscode-insiders",
    "~/Library/Application Support/Code - Insiders",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscodeinsiders.sfl*",
    "~/Library/Caches/Code - Insiders",
    "~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt",
    "~/Library/Caches/com.microsoft.VSCodeInsiders",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.plist",
    "~/Library/Saved Application State/com.microsoft.VSCodeInsiders.savedState",
  ]
end
