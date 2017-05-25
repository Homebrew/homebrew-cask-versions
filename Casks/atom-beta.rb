cask 'atom-beta' do
  version '1.18.0-beta2'
  sha256 '0134cc094e16d1d39156dd26aff46e99664567656f83a2fb984db7491f9b0dc8'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '6fac9860be5ba1bbd0d60bcddc16e7badc07360763d8bfdd1e95bfb874b2d43e'
  name 'Github Atom Beta'
  homepage 'https://atom.io/beta'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Atom Beta.app'
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/apm/node_modules/.bin/apm", target: 'apm-beta'
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/atom.sh", target: 'atom-beta'

  zap delete: [
                '~/.atom',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.atom.sfl',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/Atom',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.github.atom.ShipIt',
                '~/Library/Caches/com.github.atom',
                '~/Library/Caches/com.github.atom.ShipIt',
                '~/Library/Preferences/com.github.atom.helper.plist',
                '~/Library/Preferences/com.github.atom.plist',
                '~/Library/Saved Application State/com.github.atom.savedState',
              ]
end
