cask 'ferdi-beta' do
  version '5.4.0-beta.4'
  sha256 'fe3d71e96bd8052cc784790c4ba27b8fdadb80f85cfbeadac800abbd0ae85f36'

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
