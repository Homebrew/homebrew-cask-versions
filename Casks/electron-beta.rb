cask 'electron-beta' do
  version '2.0.0-beta.6'
  sha256 'b29e75b2476b30e6511f029741450cc8c37c64b5ba45ae609b3a532cdf2ba317'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '66bcda3493b77294fe34cfe94715c317f9254de25f3d28edfc4cae5451e582f0'
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
