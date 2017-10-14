cask 'emacs-pretest' do
  version '26.0.90'
  sha256 '85ed39cda9795ca1951b0ecae40d5c965a1f0b13e1cc4691ba5ccb1145ac178f'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest',
          checkpoint: '855d4c518cad52c8b643fb9c39ebcacfd2fcf63b8fd3183cc6a0eb2690440375'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
