cask 'emacs-nightly' do
  version '2017-05-19_01-41-04-bb5c6614eb171eef8c08474e0f949fe18ef4b230'
  sha256 'ec1825426cd5dba200f11d0abed7990518be6dd753c777373b420166392f88bf'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '1413dc3d9b8d881b2c1cdde52cd77fcd845100c10f609359b66cca96de152768'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
