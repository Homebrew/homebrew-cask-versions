cask 'visual-studio-code-insiders' do
  version '1.17.0,aed2c7cc5c6ab2a092e524a59f82d17fc9348fc0'
  sha256 '5f7d20986f22c633d195a58e2d8cdaa812a4815113fe3bd9674db61234754239'

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
                '~/Library/Application Support/Code - Insiders',
                '~/Library/Caches/Code - Insiders',
                '~/Library/Caches/com.microsoft.VSCodeInsiders',
                '~/Library/Caches/com.microsoft.VSCodeInsiders.ShipIt',
                '~/Library/Preferences/com.microsoft.VSCodeInsiders.helper.plist',
                '~/Library/Preferences/com.microsoft.VSCodeInsiders.plist',
              ]
end
