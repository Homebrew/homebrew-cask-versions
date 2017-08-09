cask 'electron-beta' do
  version '1.7.6'
  sha256 '825497d494b31a9ef26d0a67bc5bb61bacc1f9b8cb83db9339bd5c8aec053431'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '2b214042cdbdec75e6fbaf31ede22c68845bfa150f2ef9588e81cb40af2c5a18'
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
