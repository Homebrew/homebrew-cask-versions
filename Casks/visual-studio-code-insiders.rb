cask "visual-studio-code-insiders" do
  if Hardware::CPU.intel?
    version "1.53.0,6dc779565e1e4a26104002fde340b68c157c3bc5"
    sha256 "ea08cd72f7501223d1c888b300bd961df27e80558e4e51c868740f651f3912ce"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://update.code.visualstudio.com/api/update/darwin/insider/VERSION"
  else
    version "1.53.0,e17aea136d32fdb06d9b32184b04ccd36bb51e9c"
    sha256 "3f9bdb6867636cc9116d96a09aef53a927e1636609df33bfe23a1275107a04b6"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-arm64.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://update.code.visualstudio.com/api/update/darwin-arm64/insider/VERSION"
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
