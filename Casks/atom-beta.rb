cask 'atom-beta' do
  version '1.23.0-beta0'
  sha256 '23bd3c31a2444dd14ebc18553d22343d97104114ebd33f58f348147dfc56c545'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '5d91fb8b10735eaf9660d884117e7032dfb7adc210d40a47312b0087b7a91811'
  name 'Github Atom Beta'
  homepage 'https://atom.io/beta'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Atom Beta.app'
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/apm/node_modules/.bin/apm", target: 'apm-beta'
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/atom.sh", target: 'atom-beta'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.atom.sfl',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Caches/com.github.atom',
                '~/Library/Caches/com.github.atom.ShipIt',
                '~/Library/Saved Application State/com.github.atom.savedState',
              ],
      trash:  [
                '~/.atom',
                '~/Library/Application Support/Atom',
                '~/Library/Application Support/com.github.atom.ShipIt',
                '~/Library/Preferences/com.github.atom.helper.plist',
                '~/Library/Preferences/com.github.atom.plist',
              ]
end
