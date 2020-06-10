cask 'atom-nightly' do
  version :latest
  sha256 :no_check

  url 'https://atom.io/download/mac?channel=nightly'
  name 'Github Atom Nightly'
  homepage 'https://atom.io/nightly'

  app 'Atom Nightly.app'
  binary "#{appdir}/Atom Nightly.app/Contents/Resources/app/apm/bin/apm", target: 'apm-nightly'
  binary "#{appdir}/Atom Nightly.app/Contents/Resources/app/atom.sh", target: 'atom-nightly'

  zap trash: [
               '~/.atom',
               '~/Library/Application Support/Atom',
               '~/Library/Application Support/ShipIt_stderr.log',
               '~/Library/Application Support/ShipIt_stdout.log',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.atom.sfl*',
               '~/Library/Application Support/com.github.atom.ShipIt',
               '~/Library/Caches/com.github.atom',
               '~/Library/Caches/com.github.atom.ShipIt',
               '~/Library/Logs/Atom',
               '~/Library/Preferences/com.github.atom.helper.plist',
               '~/Library/Preferences/com.github.atom.plist',
               '~/Library/Saved Application State/com.github.atom.savedState',
             ]
end
