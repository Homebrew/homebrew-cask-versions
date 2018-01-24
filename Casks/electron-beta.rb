cask 'electron-beta' do
  version '1.8.2-beta.4'
  sha256 'cb554483b0435678c207129c37fdd52890751c7d2cd92ddecdf1d6d582100f71'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '1663d8c295eff9997dd88d7e2eba80580fd47a0b5e054a97d58ae5d789ed9f29'
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
