cask 'electron-beta' do
  version '1.6.9'
  sha256 '02b2393be8b454c06fa2906f127d1fe51708369727b48cd293e1f064c0c8a2fe'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '362b5578ff0e87bbfaf94f5ac126e404da2cf3bb41a4dacd2274f4367dbced8b'
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
