cask 'emacs-nightly' do
  version '2017-05-16_01-41-03-4635016869f7b85dfe37669674677a7dcaab20c4'
  sha256 '098ea2ada798d91aec346dad5addc626e95ae8dde3752782ea293a809079b1c9'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: 'e419896a16e4a7e2b25b1494802d3a7f40ea9d5fab1a76a81959253768cced9b'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
