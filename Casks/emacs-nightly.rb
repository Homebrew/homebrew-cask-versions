cask 'emacs-nightly' do
  version '2016-12-10_01-45-35-fc0fd24c105bde4c001ebebe4b8b7e1f96cd2871'
  sha256 '2fb57d188e4de86ba75f123a4e41162705ffa7c1cb2df65208097557bca89d4d'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '3636bbf0be9aaf5baf019b84048e2662613449d54714cb5272b1e9cc5202ee13'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
