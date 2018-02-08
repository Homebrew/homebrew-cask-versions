cask 'emacs-pretest' do
  version '26.0.91'
  sha256 'b43575f0db141e358a4c916891c6dc50e1693daa54b2d23d86efb7d048dbef2a'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest',
          checkpoint: '047327f6099140650abdbfc636d48500c3cd13281947b363f4c8da4f1fe42893'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
