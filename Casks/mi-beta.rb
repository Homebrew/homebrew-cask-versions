cask 'mi-beta' do
  version '3.0.1b1'
  sha256 '3f321b00269aa29cc91598e14143eb54b117e4ed3a31565035078714c94cb2bc'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast 'https://www.mimikaki.net/download/appcast_beta.xml',
          checkpoint: 'cf515084871afee792edd3b7a94e3e84480fe1ce871253882121782592997233'
  name 'mi'
  homepage 'https://www.mimikaki.net/download/beta.html'

  depends_on macos: '>= :lion'

  app 'mi.app'

  zap trash: [
               '~/Library/Caches/net.mimikaki.mi',
               '~/Library/Preferences/net.mimikaki.mi.plist',
             ]
end
