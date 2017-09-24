cask 'hyper-canary' do
  version '2.0.3'
  sha256 '63e7b794ad30ed2d8f20fbdff62a7d5c924d12fa7d7acf947b5b6e326fc9d9b7'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '3e6904e6ace6c8b67292010e3a8651f04d55142399409ab663b7997168ab23ed'
  name 'Hyper'
  homepage 'https://hyper.is/'

  app 'Hyper.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl',
                '~/Library/Caches/co.zeit.hyper',
                '~/Library/Caches/co.zeit.hyper.ShipIt',
                '~/Library/Saved Application State/co.zeit.hyper.savedState',
              ],
      trash:  [
                '~/.hyper.js',
                '~/.hyper_plugins',
                '~/Library/Application Support/Hyper',
                '~/Library/Preferences/co.zeit.hyper.plist',
                '~/Library/Preferences/co.zeit.hyper.helper.plist',
              ]
end
