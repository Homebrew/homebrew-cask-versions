cask :v1 => 'emacs-nightly' do
  version '2015-10-08_01-40-58-1f37714'
  sha256 'a52cb4c2828eb901d7770951ad7eadf78cfcdc10a145e71aa593aca9eeea893b'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
