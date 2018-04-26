cask 'atom-beta' do
  version '1.27.0-beta1'
  sha256 '4ce7c468a0d50d0986629ce8ff4f1bed6497e4e50c0f4f6b8e7aa083ae95935f'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '17c78fd68e68cf0037c19d40d1b8cdf93d673e4ee06b5738a1a13e2789ac2e8e'
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
