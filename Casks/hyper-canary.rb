cask 'hyper-canary' do
  version '2.0.0-canary.16'
  sha256 '596b247409714c2bc8d567ce51af5f03a41465168096f4d6e339e06c0da17849'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: 'bc0982b90c5bec16bcdf3e59c364f213b158cf73be3ce1d4d12ae7331e02b858'
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
