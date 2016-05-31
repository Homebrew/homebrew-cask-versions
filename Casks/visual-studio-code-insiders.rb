cask 'visual-studio-code-insiders' do
  version '1.1.0,1f0657703be5609d70088b0385bc27db8cc03a41'
  sha256 'ae207e4e3e5656c4f9f3b3e5769f74ee40a59225af6a72f69d29279f92fcf5f8'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/insider/#{version.after_comma}/VSCode-darwin-insider.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code - Insiders'
  homepage 'https://code.visualstudio.com/insiders'
  license :mit

  auto_updates true

  app 'Visual Studio Code - Insiders.app'
  binary "#{appdir}/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code"

  zap delete: [
                '~/Library/Application Support/Code - Insiders',
                '~/Library/Caches/Code - Insiders',
              ]
end
