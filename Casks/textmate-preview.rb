cask 'textmate-preview' do
  version '2.0-rc.30'
  sha256 '8e2aad3bb2ed64c43283e5697629c831dd087a47aecef85c0072d60bde7765bf'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://github.com/textmate/textmate/releases.atom'
  name 'TextMate'
  homepage 'https://macromates.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'TextMate.app'
  binary "#{appdir}/TextMate.app/Contents/Resources/mate"

  uninstall quit: 'com.macromates.TextMate'

  zap trash: [
               '~/Library/Application Support/TextMate',
               '~/Library/Caches/com.macromates.TextMate',
               '~/Library/Preferences/com.macromates.TextMate.plist',
               '~/Library/Saved Application State/com.macromates.TextMate.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macromates.textmate.sfl2',
             ]
end
