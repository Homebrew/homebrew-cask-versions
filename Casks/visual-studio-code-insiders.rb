cask 'visual-studio-code-insiders' do
  version '1.14.0,73015a5e052e6de8ecd60eed2670bea81fad8cac'
  sha256 '5806f83ac8ceeece4bfcb3ecbf30940affcc9facdf49f937270fbf5f1325d9e7'

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
