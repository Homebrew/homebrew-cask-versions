cask :v1 => 'kobo-jp' do
  version :latest
  sha256 :no_check

  url 'http://download.kobobooks.com/desktop/RakutenBooks/KoboSetup.dmg'
  homepage 'http://kobo.rakuten.co.jp'
  license :unknown

  app 'Kobo.app'
end
