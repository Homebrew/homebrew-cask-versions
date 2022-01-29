cask "visual-studio-code-insiders" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "1.64.0,b8178e3e2f3f620ebdd31dfbfba937ff1b12ee04"

  if Hardware::CPU.intel?
    sha256 "b6d3d15aa3b2f2e512454dad4a14ca790c2c07d6f175de16fe29d0f4c45a393e"
  else
    sha256 "bc52458cce88eebd8d4addc03dc07ce816fa7802076225fe537001ffc6fa8c5a"
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
