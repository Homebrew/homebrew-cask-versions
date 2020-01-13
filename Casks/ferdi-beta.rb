cask 'ferdi-beta' do
  version '5.4.1-beta.4'
  sha256 '0521359f564af773b39154cd606ec35b41aa0dce88278312eb177f4a87dc7637'

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
