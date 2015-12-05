cask :v1 => 'emacs-nightly' do
  version '2015-12-04_01-41-20-ffefb6e'
  sha256 '23c84c13efda43930bd7c48ed2c29ab698c665a9009f253d41263ce413c6efc1'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
