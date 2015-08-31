cask :v1 => 'emacs-nightly' do
  version '2015-08-31_01-40-56-6cd2629'
  sha256 '2a13ebb2a4b76b520a1275e10bd79b28e8168c13521b2ffd02e6adc1aa3e6a46'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
