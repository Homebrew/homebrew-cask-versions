cask 'hex-fiend-beta' do
  version '2.10b1'
  sha256 '7e914ac4dfeeb4e89311b4f35908d18f206192f7e551acec554d65565e291116'

  # github.com/ridiculousfish/HexFiend was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.major_minor}.dmg"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom'
  name 'Hex Fiend'
  homepage 'http://ridiculousfish.com/hexfiend/'

  conflicts_with cask: 'hex-fiend'
  depends_on macos: '>= :lion'

  app 'Hex Fiend.app'
  binary "#{appdir}/Hex Fiend.app/Contents/Resources/hexf"

  zap trash: [
               '~/Library/Caches/com.ridiculousfish.HexFiend',
               '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
               '~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState',
             ]
end
