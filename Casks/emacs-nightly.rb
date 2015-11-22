cask :v1 => 'emacs-nightly' do
  version '2015-11-21_01-41-03-e53b310'
  sha256 '32c284c4b18f27809815df25f310f9d639b9ad195d0a97504356a27aeae269c5'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
