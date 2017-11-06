cask 'visual-studio-code-insiders' do
  version '1.18.0,098bb776d2e5fdf3cc9ea27a233754acf4309857'
  sha256 '2cf57a2697632209a4e886070fe0c52a920e211cb1502e2001d75cb2efb0fceb'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-insider.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code - Insiders'
  homepage 'https://code.visualstudio.com/insiders'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Visual Studio Code - Insiders.app'
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code"

  zap delete: [
                '~/Library/Caches/Code - Insiders',
                '~/Library/Caches/com.microsoft.VSCodeInsiders',
                '~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt',
              ],
      trash:  [
                '~/Library/Application Support/Code - Insiders',
                '~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist',
                '~/Library/Preferences/com.microsoft.VSCodeInsiders.plist',
              ]
end
