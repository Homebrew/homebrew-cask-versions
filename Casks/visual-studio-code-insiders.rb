cask 'visual-studio-code-insiders' do
  version '1.3.0,5474147bb83618975409dad7d8aa96151d7d1ea1'
  sha256 '05e55c2e130315358dd9ce3c1c039e4bb7e07b4c6edcebe0acf30bc639a81aef'

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
