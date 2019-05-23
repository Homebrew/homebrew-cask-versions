cask 'visual-studio-code-insiders' do
  version '1.35.0,4ca38ce5584d7cd67b435b3c32ef1240c6a29628'
  sha256 'cc68c0e8a208a1d33c7f079e4e34132911f1c1f09887c8bff42eca4ae36884ed'

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
