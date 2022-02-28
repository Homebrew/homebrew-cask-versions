cask "visual-studio-code-insiders" do
  version :latest
  sha256 :no_check

  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  url "https://update.code.visualstudio.com/api/update/#{arch}/insider/VERSION" do |version_page|
    version = JSON.parse(version_page)["version"]

    ["https://az764295.vo.msecnd.net/insider/#{version}/VSCode-#{arch}.zip",
     { verified: "az764295.vo.msecnd.net/insider/" }]
  end
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
