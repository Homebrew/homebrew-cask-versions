cask 'electron-beta' do
  version '1.8.2-beta.3'
  sha256 '2fc78e43a4b06828ab934df5e5d6378c8b9bffb7c837f8d2cd26ba4a0005bd57'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '7dcc6964375f6537c68b33126dbe875f94d0b2b6eafd7a49c32672b146042b15'
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
