cask 'electron-beta' do
  version '2.0.0-beta.5'
  sha256 'bd195ebdc5fdcbd2eb0a4f2c56f623a1fc4296b5237db2d308797b4c62d2adb9'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '14054edeaf277829f5b323e30ad276bd6286c164e8cc3c23ff1bd41c55e69fc9'
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
