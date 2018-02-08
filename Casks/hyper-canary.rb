cask 'hyper-canary' do
  version '2.0.0-canary.11'
  sha256 'b046fb274d03a116e326171ac2f7302cd8b8890ba55a09cc6e460e84b73a6e8f'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '332eda3ed5e714c57d39349d0e0edd0fee9508a898a8aa81d46c089efe308571'
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
