cask 'texstudio-beta' do
  version '2.12.10beta2'
  sha256 '17c8b47fe831a7202a31c1ce0030cfa47c43dc6437731f9b0db209ef81420d3b'

  # github.com/texstudio-org/texstudio was verified as official when first introduced to the cask
  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx.dmg"
  appcast 'https://github.com/texstudio-org/texstudio/releases.atom'
  name 'TeXstudio'
  homepage 'http://texstudio.org/'

  conflicts_with cask: 'texstudio'

  app 'texstudio.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*',
               '~/Library/Preferences/texstudio.plist',
               '~/Library/Saved Application State/texstudio.savedState',
             ]
end
