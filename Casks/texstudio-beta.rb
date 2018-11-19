cask 'texstudio-beta' do
  version '2.12.12beta2'
  sha256 '436a89c0a1c93a211726da441ac6b66474b561c024dfcf447932ac888a45193e'

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
