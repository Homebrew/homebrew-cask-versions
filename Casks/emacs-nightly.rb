cask 'emacs-nightly' do
  version '2017-04-14_01-41-06-96644ed496cfc36ef886c401250203c57d77ab75'
  sha256 '92437d6d7efddd9eda3fa27c827deeee831627521cfd3864b44babcf50995612'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '7fc10734e00e7c404d48fa7005bcf8bd43c17346c1d28ef01bf7fb500cb1d45a'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
