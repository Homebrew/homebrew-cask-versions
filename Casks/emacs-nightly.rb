cask 'emacs-nightly' do
  version '2016-01-07_01-41-39-4580671'
  sha256 '7e2a3dd2a5972e2615635c36561acf3fe68073fe5da0bec585cb4f2a7ce63d9f'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
