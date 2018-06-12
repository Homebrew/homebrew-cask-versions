cask 'hex-fiend-beta' do
  version '2.9.0,4'
  sha256 'c3cd3aa704e123475a54bfa3f9a74c2e20594f40b69f51832518392bdd49848f'

  # github.com/ridiculousfish/HexFiend was verified as official when first introduced to the cask
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version.before_comma}-beta-#{version.after_comma}/Hex_Fiend_#{version.major_minor}.dmg"
  appcast 'https://github.com/ridiculousfish/HexFiend/releases.atom',
          checkpoint: '3646b93dde0a520765c3e8290da11c1e16e78bdd93bc3287fb84f9e27b4bce0d'
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
