cask 'mi-beta' do
  version '3.0.0'
  sha256 '6239a38e289a00555341ee55dbc97d99a11a1fca9b4f1724fac194df73167727'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast 'https://www.mimikaki.net/download/appcast_beta.xml',
          checkpoint: '1dac6539d81b880430695e8d98ef42d891e6415c68b3573de1532464ebce0142'
  name 'mi'
  homepage 'https://www.mimikaki.net/download/beta.html'

  depends_on macos: '>= :lion'

  app 'mi.app'

  zap trash: [
               '~/Library/Caches/net.mimikaki.mi',
               '~/Library/Preferences/net.mimikaki.mi.plist',
             ]
end
