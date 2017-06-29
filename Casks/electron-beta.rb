cask 'electron-beta' do
  version '1.7.4'
  sha256 '86e8af97e5c0033984a61033fd5569e44b3b4fb7c3a502e3968a8e15ab71951d'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '2317e9017ab85f839c6759c0c0fb59b2f3139e700ae4921cc0b27996790a90bc'
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
