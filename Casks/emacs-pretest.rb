cask 'emacs-pretest' do
  version '26.0.91-1'
  sha256 'f6b2c64be15806f153913e2d6f2c6e526c9f596d63438c044bafcf34abba1942'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest',
          checkpoint: '725a3e42d1670bffc704c577a1f6379518a187ea4bfe760f10925e26d4cf3a0f'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
