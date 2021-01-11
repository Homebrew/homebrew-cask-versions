cask "visual-studio-code-insiders" do
  version "1.53.0,3ceb3a100ed0ad5f3238b5022d9d64353a1cc31e"
  sha256 "47747b302d5f3d3245c1d45d99db326497c94148bd63356f8395b0763bc300d3"

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
