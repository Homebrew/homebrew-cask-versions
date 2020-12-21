cask "visual-studio-code-insiders" do
  version "1.53.0,4a875e23d20b64504a818834f3fa4c40adb8d480"
  sha256 "4b3672cec5c78d300e6a04200904c7c20f1cc1a0475febb30f3a4d4eba5eda40"

  url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
      verified: "az764295.vo.msecnd.net/insider/"
  appcast "https://vscode-update.azurewebsites.net/api/update/darwin/insider/VERSION"
  name "Microsoft Visual Studio Code"
  name "VS Code - Insiders"
  desc "Integrated development environment"
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
