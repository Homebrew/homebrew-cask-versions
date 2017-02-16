cask 'visual-studio-code-insiders' do
  version '1.10.0,ef3a8c9e2b642613635c1c53f70bcc86e123ad9a'
  sha256 'f41547459d9d774521cf390277c14d0f2840ea5f06aadaaded86e558c8d1aec2'

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
