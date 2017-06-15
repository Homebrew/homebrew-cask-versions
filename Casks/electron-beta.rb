cask 'electron-beta' do
  version '1.7.3'
  sha256 '083388a2c3b4fabaea02d7a5f7ac1f87c70ce44a828585c7a84b238ea1f9973a'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'f064337f1fcdc461719c4cc47625b4406811bc8415d255475aedf88b78c7cf75'
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
