cask 'emacs-nightly' do
  version '2017-05-10_01-41-03-48e6e9a939cd0442497ee2e7b317d94ff9103cfb'
  sha256 '3b49031f4c20d628287bd62015d9ed007d0933db3cae02e784118ff47a70a983'

  url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/daily',
          checkpoint: '6eec8467e7762dd50a2d79e87bdd89ae220b2a6b3e5cfcd50cafb2a3737e35b7'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
