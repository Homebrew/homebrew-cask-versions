cask 'hyper-canary' do
  version '2.0.0-canary.10'
  sha256 '33549b370afd12747bc90e00d1099912d1f89545070d8b3c61db7b6009599f2b'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: 'dc81191d78c697f46226f3f7a5338b6f1cab25d9cdd8689b48278125578632ad'
  name 'Hyper'
  homepage 'https://hyper.is/'

  auto_updates true

  app 'Hyper.app'

  zap trash: [
               '~/.hyper.js',
               '~/.hyper_plugins',
               '~/Library/Application Support/Hyper',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl*',
               '~/Library/Caches/co.zeit.hyper',
               '~/Library/Caches/co.zeit.hyper.ShipIt',
               '~/Library/Preferences/co.zeit.hyper.plist',
               '~/Library/Preferences/co.zeit.hyper.helper.plist',
               '~/Library/Saved Application State/co.zeit.hyper.savedState',
             ]
end
