cask 'ferdi-beta' do
  version '5.4.1-beta.3'
  sha256 '396f7a049c4cd8cd25df924addeb006aaa6454c79cae18cc69f036d7204333d4'

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
