cask "visual-studio-code-insiders" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "1.63.0,b614fb5db84b3ac07fc3e8b12c69c1dd581924ce"

  if Hardware::CPU.intel?
    sha256 "7274d783faec5f620289d71463baf2039f90255989a5c6440d261ba0eaeeff63"
  else
    sha256 "4c1d946fa1d3cdd5d14875ac99b42f81f64cfcb21ce74bd628033fd7ebd75b71"
  end

  url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-#{arch}.zip",
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
