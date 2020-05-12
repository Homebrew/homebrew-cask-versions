cask 'visual-studio-code-insiders' do
  version '1.46.0,288852d8c26d797974bfb8aed06e1bff9b809223'
  sha256 '5afc0966f3a1448e0e62ec6709510ff57eaa51594ffa3662a97d70fe5472c89f'

  # az764295.vo.msecnd.net/insider/ was verified as official when first introduced to the cask
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
