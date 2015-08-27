cask :v1 => 'emacs-nightly' do
  version '2015-08-26_01-41-37-920a0ad'
  sha256 '85f8f5a25b7b8bcdf668e18140e6bbdd17db1007ff9fa4b5bcd9597ebf2f60a0'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
