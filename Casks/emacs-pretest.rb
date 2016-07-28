cask 'emacs-pretest' do
  version '25.1-rc1'
  sha256 '572dff6723feef0bda86218cfabe09663ed6df1b6a34594084f9a7dbdf957c77'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest',
          checkpoint: 'dd33e548cd86328cfd8e9524640c5596e2897276ed1735878da86eaa677288ad'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
