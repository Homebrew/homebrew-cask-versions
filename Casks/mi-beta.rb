cask 'mi-beta' do
  version '3.0.0b16'
  sha256 '49e239009e70edc2dc5751f9b6b7216b9584f09fe4df2be88991b58468418c38'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast 'https://www.mimikaki.net/download/appcast_beta.xml',
          checkpoint: '03564b1b79264996a3d83a5e8d0b06a974e7e2ced2bbffd739bb5b9b977e5504'
  name 'mi'
  homepage 'https://www.mimikaki.net/download/beta.html'

  depends_on macos: '>= :lion'

  app 'mi.app'

  zap trash: [
               '~/Library/Caches/net.mimikaki.mi',
               '~/Library/Preferences/net.mimikaki.mi.plist',
             ]
end
