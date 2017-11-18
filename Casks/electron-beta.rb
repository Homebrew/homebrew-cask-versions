cask 'electron-beta' do
  version '1.8.2-beta.2'
  sha256 'f92e4691cf5a9c64127e334c689c4721fdcfc8eaeeaaf901566783ccd28f75f1'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '6db5fed371e230b90ec45b8a92183f6c5f86bf8cf5cac88f431b9c3bf395937c'
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
