cask 'visual-studio-code-insiders' do
  version '1.41.0,bf7d03bf88732af0b46e473c663c49e18e839f9c'
  sha256 'e05c509ef0d153c7ab7aaae8591a203ad74246b2833962aa32b4dbdedd38f06a'

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
