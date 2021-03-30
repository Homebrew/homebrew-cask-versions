cask "visual-studio-code-insiders" do
  version "1.55.0,c185983a683d14c396952dd432459097bc7f757f"

  if Hardware::CPU.intel?
    sha256 "9f513475598be22b090c5db3c10c14d2a25566c79fadf989888cb7440ebfede9"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin.zip",
        verified: "az764295.vo.msecnd.net/insider/"
  else
    sha256 "038133f0fd98df8d8205a15d82f15d979e771c3a778746441d5b7e6b23c82b5a"

    url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-arm64.zip",
        verified: "az764295.vo.msecnd.net/insider/"
  end

  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/insiders"

  livecheck do
    url "https://update.code.visualstudio.com/api/update/darwin-universal/insider/VERSION"
    strategy :page_match do |page|
      name = page.match(/"name":"(\d+(?:\.\d+)*)/i)
      version = page.match(/"version":"(\w+)/i)
      "#{name[1]},#{version[1]}"
    end
  end

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
