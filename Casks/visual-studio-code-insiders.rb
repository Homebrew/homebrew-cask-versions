cask 'visual-studio-code-insiders' do
  version '1.19.0,3c470706ded48fc75c05f86bc4f9c7b0f4d6c708'
  sha256 '5653495dc05b29d614ff9664e0dc4d6c1817a7df4f81a87ca15cf6500d9b6392'

  # az764295.vo.msecnd.net/insider was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-insider.zip"
  appcast 'https://vscode-update.azurewebsites.net/api/update/darwin/insider/VERSION',
          checkpoint: 'c1c068f4f0f6618d411f80bbde53991c09490ce9a707b7d7c72a79246ad47ab4'
  name 'Microsoft Visual Studio Code'
  name 'VS Code - Insiders'
  homepage 'https://code.visualstudio.com/insiders'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Visual Studio Code - Insiders.app'
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code"

  zap trash: [
               '~/Library/Application Support/Code - Insiders',
               '~/Library/Caches/Code - Insiders',
               '~/Library/Caches/com.microsoft.VSCodeInsiders',
               '~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt',
               '~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist',
               '~/Library/Preferences/com.microsoft.VSCodeInsiders.plist',
             ]
end
