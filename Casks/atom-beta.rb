cask 'atom-beta' do
  version '1.30.0-beta2'
  sha256 'b61cd1a3c449016e64eda058d75522090afc8bfb91bc9c8759fb6ea8580e142b'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom'
  name 'Github Atom Beta'
  homepage 'https://atom.io/beta'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Atom Beta.app'
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/apm/bin/apm", target: 'apm-beta'
  binary "#{appdir}/Atom Beta.app/Contents/Resources/app/atom.sh", target: 'atom-beta'

  zap trash: [
               '~/.atom',
               '~/Library/Application Support/Atom',
               '~/Library/Application Support/ShipIt_stderr.log',
               '~/Library/Application Support/ShipIt_stdout.log',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.atom.sfl*',
               '~/Library/Application Support/com.github.atom.ShipIt',
               '~/Library/Caches/com.github.atom',
               '~/Library/Caches/com.github.atom.ShipIt',
               '~/Library/Preferences/com.github.atom.helper.plist',
               '~/Library/Preferences/com.github.atom.plist',
               '~/Library/Saved Application State/com.github.atom.savedState',
             ]
end
