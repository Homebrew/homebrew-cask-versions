cask :v1 => 'emacs-nightly' do
  version '2015-11-12_01-41-05-aa17de9'
  sha256 '59ccd344f8ea071c72bd0eb96146d9bbe66e9e2ce1e73252c51b882dd7b960e7'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
