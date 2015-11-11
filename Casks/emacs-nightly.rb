cask :v1 => 'emacs-nightly' do
  version '2015-11-10_13-13-40-0bba304'
  sha256 'd10a2054ad7fc83e6dedf5df5c1b538e9d2687870d43cdfbe85e53c6f1c6cc40'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
