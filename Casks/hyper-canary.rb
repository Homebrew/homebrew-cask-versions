cask 'hyper-canary' do
  version '2.1.1'
  sha256 '5672e408cfe07008ac4eb1c01b86251837b9b743434a14b29ef372a4ef9f6148'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '5c7198ff0aee36409854b085f9cdbf451f8b8e7e55d23a0bcdaf046b23fec074'
  name 'Hyper'
  homepage 'https://hyper.is/'

  app 'Hyper.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl*',
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
