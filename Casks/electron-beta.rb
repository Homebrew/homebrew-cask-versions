cask 'electron-beta' do
  version '1.7.2'
  sha256 '8c5d40ae6c2e94f80fd2400a0671390d8930349b18306837fe3f31b4e1ef59a2'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '1014293e532fd1bbc8e9e9253e4da37b622aa513bd3fdb38d85504c51c3b2f96'
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
