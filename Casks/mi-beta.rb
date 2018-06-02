cask 'mi-beta' do
  version '3.0.1b2'
  sha256 '378221f52d673fcb478e98517819b29c87c902403cd5b764a7f7685b7b2f2ff4'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast 'https://www.mimikaki.net/download/appcast_beta.xml',
          checkpoint: '4e6eff60c8d7b84ac87d3483b0cb29b2f1b9899cfe7ed8631853e67fd7177c75'
  name 'mi'
  homepage 'https://www.mimikaki.net/download/beta.html'

  depends_on macos: '>= :lion'

  app 'mi.app'

  zap trash: [
               '~/Library/Caches/net.mimikaki.mi',
               '~/Library/Preferences/net.mimikaki.mi.plist',
             ]
end
