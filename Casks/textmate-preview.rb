cask 'textmate-preview' do
  version '2.0.1'
  sha256 'bb515daecf4f031a7d2f088ef8613a27699c774c08004202c8363d49e87c35f0'

  # github.com/textmate/textmate was verified as official when first introduced to the cask
  url "https://github.com/textmate/textmate/releases/download/v#{version}/TextMate_#{version}.tbz"
  appcast 'https://github.com/textmate/textmate/releases.atom'
  name 'TextMate'
  homepage 'https://macromates.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'TextMate.app'
  binary "#{appdir}/TextMate.app/Contents/Resources/mate"
  binary "#{appdir}/TextMate.app/Contents/Frameworks/Preferences.framework/Versions/A/Resources/rmate"

  uninstall quit: 'com.macromates.TextMate'

  zap trash: [
               '~/Library/Application Support/TextMate',
               '~/Library/Caches/com.macromates.TextMate',
               '~/Library/Preferences/com.macromates.TextMate.plist',
               '~/Library/Saved Application State/com.macromates.TextMate.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macromates.textmate.sfl2',
             ]
end
