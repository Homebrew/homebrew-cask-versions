cask 'electron-beta' do
  version '1.8.1'
  sha256 '399e10b31b47ae1dc382148df6dc420764eef63f724a3a25cd6c72ba705c1f64'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '0c040fe8196d988aeea8c3480da1aab3b62c57c3eee29fbf7a637f3cfa206479'
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
