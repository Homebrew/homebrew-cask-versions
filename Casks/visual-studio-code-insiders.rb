cask 'visual-studio-code-insiders' do
  version '1.18.0,c098b394b07afbb58975ab609117a0e115c5a3fa'
  sha256 '72cdab188148282f20ad658afcfb6eb016ca7483f5b97577a224ba5b78170a85'

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
