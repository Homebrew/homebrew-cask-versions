cask 'electron-beta' do
  version '2.0.0-beta.3'
  sha256 'd5c552d017d694db76d5a79109104136ae47b24af4a6a6f6902dc8e34cea80ad'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '0ec426ddda0506a497d007a207aa78bdfe1e9cf64601f51f3a0b492ff6f8479b'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap trash: [
               '~/Library/Application Support/Electron',
               '~/Library/Caches/Electron',
               '~/Library/Preferences/com.github.electron.helper.plist',
               '~/Library/Preferences/com.github.electron.plist',
             ]
end
