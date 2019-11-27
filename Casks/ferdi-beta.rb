cask 'ferdi-beta' do
  version '5.4.0'
  sha256 'c7a8d05d77a7816e2d82467c9445f4937a1f11b66a97d28ccdc064178211e932'

  # github.com/getferdi/ferdi was verified as official when first introduced to the cask
  url "https://github.com/getferdi/ferdi/releases/download/v#{version}/Ferdi-#{version}.dmg"
  appcast 'https://github.com/getferdi/ferdi/releases.atom'
  name 'ferdi'
  homepage 'https://getferdi.com/'

  conflicts_with cask: 'ferdi'

  app 'ferdi.app'
  binary "#{appdir}/ferdi.app/Contents/MacOS/Ferdi"

  zap trash: [
               '~/Library/Application Support/Ferdi',
               '~/Library/Preferences/com.kytwb.ferdi.plist',
               '~/Library/Saved Application State/com.kytwb.ferdi.savedState',
             ]
end
