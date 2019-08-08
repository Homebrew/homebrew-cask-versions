cask 'soulver2' do
  version '2.7.0-6068'
  sha256 '798c9e76ed617a5c2522728e798aa7c8e271407137173de24b73cc111d674a76'

  url "https://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "https://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml"
  name 'Soulver'
  homepage 'https://www.acqualia.com/soulver/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Soulver.app'

  zap trash: [
               '~/Library/Application Support/Soulver',
               '~/Library/Preferences/com.acqualia.soulver.plist',
               '~/Library/Autosave Information/Unsaved Soulver Document*',
             ]
end
