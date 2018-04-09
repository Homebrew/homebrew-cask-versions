cask 'hex-fiend-beta' do
  version '2.9.0,3'
  sha256 'b5f37face5fd909c8a10d3abce52c25ebb7badf2c0f3860ac869feb71822d77b'

  # github.com/ridiculousfish/HexFiend was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version.before_comma}-beta-#{version.after_comma}/Hex_Fiend_#{version.major_minor}.dmg"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom',
          checkpoint: 'a08db7b7bd0ea6df35d193897ac5c5b11ed894703d9df5f67dfbd2d3828060de'
  name 'Hex Fiend'
  homepage 'http://ridiculousfish.com/hexfiend/'

  conflicts_with cask: 'hex-fiend'

  app 'Hex Fiend.app'
  binary "#{appdir}/Hex Fiend.app/Contents/Resources/hexf"

  zap trash: [
               '~/Library/Caches/com.ridiculousfish.HexFiend',
               '~/Library/Preferences/com.ridiculousfish.HexFiend.plist',
               '~/Library/Saved Application State/com.ridiculousfish.HexFiend.savedState',
             ]
end
