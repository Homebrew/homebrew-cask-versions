cask 'emacs-nightly' do
  version '2016-08-30_01-41-34-bcd2d911f35fd28f0a0051f237dc76f15cea4b4a'
  sha256 'd8a8df1fe2db86e6716b8a72085b560e9a3e5dcbf88176bf05ed0a01df3421a8'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '63f71e03147c101f5e52cae2441f136a8da15fe2f688fefe40e31bde45070a81'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
