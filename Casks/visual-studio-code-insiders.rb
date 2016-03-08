cask 'visual-studio-code-insiders' do
  version '5b5f4db87c10345b9d5c8d0bed745bcad4533135'
  sha256 'c0ef2f8c5172f23cd2ca11186a38e0d87caab1de0d5644a5a01966c351596ffc'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/insider/#{version}/VSCode-darwin-insider.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code - Insiders'
  homepage 'https://code.visualstudio.com/insiders'
  license :mit

  auto_updates true

  app 'Visual Studio Code - Insiders.app'

  zap delete: [
                '~/Library/Application Support/Code - Insiders',
                '~/Library/Caches/Code - Insiders',
              ]
end
