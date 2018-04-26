cask 'electron-beta' do
  version '2.0.0-beta.8'
  sha256 '5d40f579031b44db95b6d65478b6f783c0fe1d3838146d4a4a507a62a5d80930'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'f5f01556e1c19fd748eef7851fc7fe2a427b93ef0f91dbabc332345f03d12102'
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
