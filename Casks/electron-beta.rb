cask 'electron-beta' do
  version '1.7.7'
  sha256 '06ff3d43474c8cbe5b500a763a83480e2f0b8f526548b567201cbb0f8cb6d200'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '5f2251ae385cabc399b1ab07a95bee0281d7fe894f875749191c6c99d7a5d862'
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
