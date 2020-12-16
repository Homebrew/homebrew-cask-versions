cask "visual-studio-code-insiders" do
  version "1.53.0,f3e95ede9e4b9818c29a5bca3564d6fd162fb210"

  if Hardware::CPU.arch == :arm64
    sha256 "716c55769531b5ea54a7246697e6bc34920a973bc5b7f3e834ff8fa0bc9f845e"
  else
    sha256 "3cec6c114ef5cad33682c8030c1ce394ef95a60aaeba037db72a2702b23d633c"
  end

  if Hardware::CPU.arch == :arm64
    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-arm64.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://vscode-update.azurewebsites.net/api/update/darwin-arm64/insider/VERSION"
  else
    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://vscode-update.azurewebsites.net/api/update/darwin/insider/VERSION"
  end
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
