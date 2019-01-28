cask 'hex-fiend-beta' do
  version '2.11.0b6'
  sha256 'a9bc7c22bcc03e02e2e79c3130148d6a08c760d04272fd0fa8baa04883929231'

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
