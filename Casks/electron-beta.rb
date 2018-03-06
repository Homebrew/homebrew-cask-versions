cask 'electron-beta' do
  version '2.0.0-beta.2'
  sha256 '66a44fa36dc9e5c0245d57cff27c9778c8c48f90af9b46c886551ba7decfe118'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '407d4c29612dfe0f7196a6288063689cbb09cd763255001aff23c2203d078a59'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap trash: [
               '~/Library/Application Support/Electron',
               '~/Library/Caches/Electron',
               '~/Library/Preferences/com.github.electron.helper.plist',
               '~/Library/Preferences/com.github.electron.plist',
             ]
end
