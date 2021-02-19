cask "visual-studio-code-insiders" do
  version "1.54.0,192c817fd350bcbf3caecae22a45ec39bae78516"

  if Hardware::CPU.intel?
    sha256 "148b841ec38af7a15021dec28dd6d810b575d30031c84d8819b82142d95e7ad6"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
        verified: "az764295.vo.msecnd.net/insider/"
    appcast "https://update.code.visualstudio.com/api/update/darwin/insider/VERSION"
  else
    sha256 "9b50ae54868a59ddc55c21c9e647b44245850ace1a0695ebd4b9cbe1f43ce082"

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
