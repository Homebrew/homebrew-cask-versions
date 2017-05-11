cask 'electron-beta' do
  version '1.7.0'
  sha256 '352aa052848ec6f34f2986d88960948ea85350c0eb19ba715f8f8c98dcdbdd12'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'd9006b59ea1092a9d169cfb9f97c990826c805d879d616025a4c17836cd054bd'
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
