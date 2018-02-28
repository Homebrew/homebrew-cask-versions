cask 'electron-beta' do
  version '2.0.0-beta.1'
  sha256 '47a2fbc513aaca863b6dcadbe27cad642cd2611ffaac1795687564c92f989fa6'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'd5dc63ab8e0f31f0f538f07aec28c70fa78673b7b0a840c7739c70ad189504a9'
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
