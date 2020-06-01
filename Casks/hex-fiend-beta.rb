cask 'hex-fiend-beta' do
  version '2.13.0b3'
  sha256 'e9b893d5c547b03c806b12d489901cb7a638225ff0d771914743abdda6ba94e8'

  # github.com/ridiculousfish/HexFiend/ was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major_minor}.dmg"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom'
  name 'Hex Fiend'
  homepage 'https://ridiculousfish.com/hexfiend/'

  conflicts_with cask: 'hex-fiend'

  app 'Hex Fiend.app'
  binary "#{appdir}/Hex Fiend.app/Contents/Resources/hexf"

  zap trash: [
               '~/Library/Caches/com.ridiculousfish.HexFiend',
               '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
               '~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState',
             ]
end
