cask 'electron-beta' do
  version '1.6.7'
  sha256 'e52f45787a9046a589815a9726c2e3a2b440de11cebe851c678b179f0107172d'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'e56438a8ed14c1ed15b4f5780d4fd6ea80f7a791edb8159d1e11aa67debde192'
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
