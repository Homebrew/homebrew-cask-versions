cask "visual-studio-code-insiders" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "1.62.0,34eeebdd66033633ac22efd5fab928ae37916168"

  url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-#{arch}.zip",
      verified: "az764295.vo.msecnd.net/insider/"
  if Hardware::CPU.intel?
    sha256 "c27d2f5e6ddb0e7d454fd57c08c161c27c4aaf9e0391f119f75705a5cdae32fe"
  else
    sha256 "2d221bb3a65f8a385030d9d493dbcbb1c534658958efdb5cad6697489e5cce65"
  end

  name "Microsoft Visual Studio Code"
  name "Visual Studio Code Insiders"
  desc "Code editor"
  homepage "https://code.visualstudio.com/insiders"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/#{arch}/insider/VERSION"
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
