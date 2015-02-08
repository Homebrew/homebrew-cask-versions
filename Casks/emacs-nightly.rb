cask :v1 => 'emacs-nightly' do
  version '25.0.50.1-dcec731'
  sha256 'f60d2612f0eb23a195917ef492853bb99427d40d3223e590201b1fe0eae04c5c'

  url 'http://emacsformacosx.com/emacs-builds/Emacs-2015-02-08_01-40-36-dcec731-universal.dmg'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
