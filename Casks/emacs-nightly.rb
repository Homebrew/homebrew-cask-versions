cask :v1 => 'emacs-nightly' do
  version '2015-09-28_01-41-05-4df75ab'
  sha256 'ccc31776a17c2baa7a4f8025c6a3efe8ef6dba3c089a438f50f9b7a7aaad2b4d'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
