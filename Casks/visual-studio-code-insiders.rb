cask "visual-studio-code-insiders" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "1.64.0,9afbea7caab9dd06592ddd98aa4161b43b126d3f"

  if Hardware::CPU.intel?
    sha256 "8b4a00a0239bb35d7360c8f1ead97d166dd703c578f1ed138e63ed0e68d7f26e"
  else
    sha256 "f94225d87b8519c26df9815c4c1032e49933d25a1bba402f0479bac7ec656c2b"
  end

  url "https://az764295.vo.msecnd.net/insider/#{version.csv.second}/VSCode-#{arch}.zip",
      verified: "az764295.vo.msecnd.net/insider/"
  name "Microsoft Visual Studio Code"
  name "Visual Studio Code Insiders"
  desc "Code editor"
  homepage "https://code.visualstudio.com/insiders"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/#{arch}/insider/VERSION"
    strategy :page_match do |page|
      name = page[/"name":"(\d+(?:\.\d+)+)/i, 1]
      version = page[/"version":"(\w+)/i, 1]
      next if name.blank? || version.blank?

      "#{name},#{version}"
    end
  end

  auto_updates true

  app "Visual Studio Code - Insiders.app"
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code", target: "code-insiders"

  zap trash: [
    "~/.vscode-insiders",
    "~/Library/Application Support/Code - Insiders",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscodeinsiders.sfl*",
    "~/Library/Caches/Code - Insiders",
    "~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt",
    "~/Library/Caches/com.microsoft.VSCodeInsiders",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCodeInsiders.plist",
    "~/Library/Saved Application State/com.microsoft.VSCodeInsiders.savedState",
  ]
end
