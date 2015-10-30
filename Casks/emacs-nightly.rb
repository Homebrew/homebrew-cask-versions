cask :v1 => 'emacs-nightly' do
  version '2015-10-30_01-41-05-b313a9d'
  sha256 '2aee076365bd1ff7736431484e5e97c31ef97cbeeb97d06b98f344db8da85a89'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
