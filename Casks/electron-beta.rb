cask 'electron-beta' do
  version '1.8.0'
  sha256 'a2ce8023e1cb7925c7d552b11962d91e4ab953127d0758c02de656246f5cf0aa'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '606f57c65d7dda6d81847e25c573840383b26782ed0089aa9a88f89f3a0d5f73'
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
