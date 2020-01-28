cask 'ferdi-beta' do
  version '5.4.1-beta.6'
  sha256 'f62a6232e5e61b817bdf599c8e672e0459ef7111f4d1bc6c46b9bf5d0b6703b2'

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
