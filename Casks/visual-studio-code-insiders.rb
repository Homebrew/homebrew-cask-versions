cask "visual-studio-code-insiders" do
  version "1.50.0,cca20eba8974b1d6b6a9b71bf4e60a29c8f26648"
  sha256 "9a4c00ea45f69976c1f6de9ced9bf9370fef924ef1db4588c1d5db2481e0c4f9"

  # az764295.vo.msecnd.net/insider/ was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-insider.zip"
  appcast "https://vscode-update.azurewebsites.net/api/update/darwin/insider/VERSION"
  name "Microsoft Visual Studio Code"
  name "VS Code - Insiders"
  homepage "https://code.visualstudio.com/insiders"

  auto_updates true

  app "Visual Studio Code - Insiders.app"
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code", target: "code-insiders"

  zap trash: [
    "~/Library/Application Support/Code - Insiders",
    "~/Library/Caches/Code - Insiders",
    "~/Library/Caches/com.microsoft.VSCodeInsiders",
    "~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.plist",
  ]
end
