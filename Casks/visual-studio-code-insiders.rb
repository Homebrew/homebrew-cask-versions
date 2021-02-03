cask "visual-studio-code-insiders" do
  version "1.53.0,e1c818a171168eedf78b62fdc7f4e3458d5dea7c"

  if Hardware::CPU.intel?
    sha256 "1c93b300bfb3f640e84c9a70cd648cfe068eb64bcd1d08af7f9149fc2372f3d1"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://update.code.visualstudio.com/api/update/darwin/insider/VERSION"
  else
    sha256 "0a79031cc8123f93d4711c82b2620651a60398bec15d720c99569ff9e7ac0829"

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
