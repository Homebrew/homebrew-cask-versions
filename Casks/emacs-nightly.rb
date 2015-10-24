cask :v1 => 'emacs-nightly' do
  version '2015-10-23_01-41-26-ba24d35'
  sha256 'b7458ccac957cf789b62695366e317eb773b054b2b8e112d268b854a1646d498'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
