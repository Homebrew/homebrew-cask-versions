cask 'electron-beta' do
  version '1.7.1'
  sha256 'e26ff7e0bfea9775d58bc4aed26a85c6827967fc66c9f9a8c1f6f0e2e58382b8'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '72fe4eef9cf453d5cd2d6d65fdab88c03e6644967ffbb4598e27d41ea5a8ad28'
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
