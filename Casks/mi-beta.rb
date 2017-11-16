cask 'mi-beta' do
  version '3.0.0b14'
  sha256 '149c76f64963e72e569f7acf862690cf6ace8169eadd0261392d0462422161b4'

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast 'https://www.mimikaki.net/download/appcast_beta.xml',
          checkpoint: '8bdfa6654c195347c081f8e3ad37e53f9e8ede1818b902c00a6b5c1eedc03431'
  name 'mi'
  homepage 'https://www.mimikaki.net/download/beta.html'

  depends_on macos: '>= 10.7'

  app 'mi.app'

  zap delete: '~/Library/Caches/net.mimikaki.mi',
      trash:  '~/Library/Preferences/net.mimikaki.mi.plist'
end
