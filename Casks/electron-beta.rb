cask 'electron-beta' do
  version '1.6.8'
  sha256 '40fb4f098321f1a1988d379e4a617df59513ad8e6faa9a3c741a6934f8366ee4'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '6e4158cccd5bed9d4d5734713f194467bd2798560e9046b5369b68a19421d4ca'
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
