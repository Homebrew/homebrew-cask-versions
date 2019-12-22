cask 'texstudio-beta' do
  version '2.12.18beta2'
  sha256 '364c12ba0ecd884c798a544943d037b77113f0bc7c45e1c24e576ef41367854c'

  # github.com/texstudio-org/texstudio was verified as official when first introduced to the cask
  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx.dmg"
  appcast 'https://github.com/texstudio-org/texstudio/releases.atom'
  name 'TeXstudio'
  homepage 'https://texstudio.org/'

  conflicts_with cask: 'texstudio'

  app 'texstudio.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*',
               '~/Library/Preferences/texstudio.plist',
               '~/Library/Saved Application State/texstudio.savedState',
             ]
end
