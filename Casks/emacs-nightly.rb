cask 'emacs-nightly' do
  version '2016-12-12_01-46-04-184ed36136d7d78a914979009db208518312137c'
  sha256 '0168c61f30c11604b44606422e69bc977e599646358217079d4032bfc71a319c'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '9a643b85f03e052b22d6cbb5204dd98bcc000aabb9197311990e149487d46247'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
