cask 'atom-beta' do
  version '1.24.0-beta3'
  sha256 'c1da7e5a467d62d8b9ea6904202b5aa1b02086fa7af9f14e76edf8011fe90b27'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '617ec22b5a46e2fa7d2fabde648f5a6983b8211d7947f7176d6792c6d7aab486'
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
