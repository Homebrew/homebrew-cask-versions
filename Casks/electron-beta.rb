cask 'electron-beta' do
  version '2.0.0-beta.7'
  sha256 'b7f65888bb49e0517d1156b22f2970e197373ef3bdb5b76451f59e18f2a00235'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '6cc639e1a6f1cb410ca2297671064bcf4bc12292b2bbf6c2018846dc80201af7'
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
