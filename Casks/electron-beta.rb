cask 'electron-beta' do
  version '1.6.5'
  sha256 'ad2d76b03ecb92cea828968e63c5c93042becd1adfcfebc39db594a7893817d5'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'c8f724780b4bc9592dd5708c3fb40fe43fe77fc77dd02ef35d37a715d30e6cdc'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap delete: [
                '~/Library/Application Support/Electron',
                '~/Library/Caches/Electron',
                '~/Library/Preferences/com.github.electron.helper.plist',
                '~/Library/Preferences/com.github.electron.plist',
              ]
end
