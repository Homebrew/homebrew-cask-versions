cask :v1 => 'emacs-nightly' do
  version '2015-09-21_01-41-18-1802831'
  sha256 '125757f25ad6b2df2b93d5fdfedbe56851aa2839ee1612db9e238d8955d4052e'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
