cask 'electron-beta' do
  version '1.8.2-beta.1'
  sha256 '05087eb5b6c364b582bbef78ab67f4c3eb399c23a37588ce20a9daad19358a53'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'b19de57a1ee83b1757dcd701312df54e8670dda43185361da5b57b1f18c69c0f'
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
