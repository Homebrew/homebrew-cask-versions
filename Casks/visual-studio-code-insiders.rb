cask "visual-studio-code-insiders" do
  version "1.53.0,a48ef56fbf7767f55a193d7d5687addd1fc9239c"
  sha256 "53391a8531e049810528efa1f746abd32caf70058ae107f63dca8cb0b48ebe40"

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
