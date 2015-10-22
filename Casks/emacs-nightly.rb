cask :v1 => 'emacs-nightly' do
  version '2015-10-21_01-41-09-f2dbc7f'
  sha256 'c868356a96253f7337c7653f2cca1ce1c0ecc9df66d5a2631ed5809f7f272546'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
