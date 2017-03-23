cask 'electron-beta' do
  version '1.6.4'
  sha256 '426b9fe9172f6010741de602aeb26fadceeeab1651ccc42519a741bcff6d7129'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '253b42ede71c63f200d199eb6ab6d3201b45416a8526a5075ef402a46e41a1d2'
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
