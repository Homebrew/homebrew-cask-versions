cask 'hyper-canary' do
  version '2.1.0'
  sha256 'c01e3777369b30ee46c1aea518662179619bbbfe6c4b02612bf6ce4a867d3b8c'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '101b3aa1af4d962d106ab2fca40021030bdedea7cfa4fdce69e56ddcd3ca5c74'
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
