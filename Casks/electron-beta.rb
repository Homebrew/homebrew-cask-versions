cask 'electron-beta' do
  version '1.7.5'
  sha256 '27456e5b128776ffe8ced12812ebf0fdf55081cfd386f969f78ba7248b1f6cb4'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '88d3a2b71a0c6df43b3ad050e4d752d5e81f9825aae46c91852b1e0a063d2ade'
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
