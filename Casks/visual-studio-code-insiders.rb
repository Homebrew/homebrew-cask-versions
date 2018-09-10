cask 'visual-studio-code-insiders' do
  version '1.28.0,96854113091424c07b28ba84b82b75a88b8455cb'
  sha256 '48127c9d1c6d39279500ce4354dfd0de9e58c29a8707b0d442a52cac8fe5a564'

  # az764295.vo.msecnd.net/insider was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-insider.zip"
  appcast 'https://vscode-update.azurewebsites.net/api/update/darwin/insider/VERSION'
  name 'Microsoft Visual Studio Code'
  name 'VS Code - Insiders'
  homepage 'https://code.visualstudio.com/insiders'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Visual Studio Code - Insiders.app'
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code", target: 'code-insiders'

  zap trash: [
               '~/Library/Application Support/Code - Insiders',
               '~/Library/Caches/Code - Insiders',
               '~/Library/Caches/com.microsoft.VSCodeInsiders',
               '~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt',
               '~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist',
               '~/Library/Preferences/com.microsoft.VSCodeInsiders.plist',
             ]
end
