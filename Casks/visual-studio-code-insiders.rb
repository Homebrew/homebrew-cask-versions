cask "visual-studio-code-insiders" do
  version "1.55.0,9b2ee7fb7d970b9a628fdb3545bdd01d67078d16"

  if Hardware::CPU.intel?
    sha256 "dc4706db0eb7c8f878d441f5f8582e80413a8c1a07da67baf456de4613a2e8ba"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://update.code.visualstudio.com/api/update/darwin/insider/VERSION"
  else
    sha256 "4cddb052f19eddca108dcbe3dcd2b3443c72519b21b9216af90c85041958f35b"

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
