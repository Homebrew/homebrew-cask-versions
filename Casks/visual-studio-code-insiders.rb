cask "visual-studio-code-insiders" do
  version "1.61.0,df115e761ae11cf87ca569ca1824b7257099553a"

  if Hardware::CPU.intel?
    sha256 "2fb4387f2e763f05f5bd3e81a5e0ae3544612b1b5b38da9c27cd298c8c05d573"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
        verified: "az764295.vo.msecnd.net/insider/"
  else
    sha256 "5c2bb9ac54356fbef5aae30c2123f403373188e59cc6894610ab065b5fc8c862"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-arm64.zip",
        verified: "az764295.vo.msecnd.net/insider/"
  end

  name "Microsoft Visual Studio Code"
  name "Visual Studio Code Insiders"
  desc "Code editor"
  homepage "https://code.visualstudio.com/insiders"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/darwin-universal/insider/VERSION"
    strategy :page_match do |page|
      name = page[/"name":"(\d+(?:\.\d+)*)/i, 1]
      version = page[/"version":"(\w+)/i, 1]
      "#{name},#{version}"
    end
  end

  auto_updates true

  app "Visual Studio Code - Insiders.app"
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code", target: "code-insiders"

  zap trash: [
    "~/Library/Application Support/Code - Insiders",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscodeinsiders.sfl*",
    "~/Library/Caches/Code - Insiders",
    "~/Library/Caches/com.microsoft.VSCodeInsiders",
    "~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.plist",
    "~/Library/Saved Application State/com.microsoft.VSCodeInsiders.savedState",
    "~/.vscode-insiders",
  ]
end
