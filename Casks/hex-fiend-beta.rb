cask 'hex-fiend-beta' do
  version '2.12b2'
  sha256 'a49812da22fb1d65adf78aa19f79bae3a2e3801e50265ce688bb52289055f16e'

  # github.com/ridiculousfish/HexFiend was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex_Fiend_#{version.sub(%r{\w\d$}, '')}.dmg"
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
