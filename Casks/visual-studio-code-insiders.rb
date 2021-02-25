cask "visual-studio-code-insiders" do
  version "1.54.0,59c31364c707ee962cc594389966801af4ce69bd"

  if Hardware::CPU.intel?
    sha256 "0a07122e266bad30faf8bcd23400ec204a138decb617e7522d61077407cdecbf"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://update.code.visualstudio.com/api/update/darwin/insider/VERSION"
  else
    sha256 "95854c5cd6a24c84aa0330225dc7769932289c3766bbe43326aafd01f3428623"

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
