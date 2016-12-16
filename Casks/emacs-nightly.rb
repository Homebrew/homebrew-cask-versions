cask 'emacs-nightly' do
  version '2016-12-16_01-45-26-cdf5340f51d4346c276102331e3ed29561753b26'
  sha256 '0febada7447086031ad548fda20dcbed164f3f017c0d79dc7e6b1ec6df468c78'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '55e20b694a54233f7b297dc231db25fb3b2dee56dfc1ac000403496451ba8ca6'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
