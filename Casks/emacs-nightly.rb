cask :v1 => 'emacs-nightly' do
  version '24.3.50r115148'
  sha256 '903e0f8acb5e3e84e46f1787d85b17b4be88ec7956d17adb6b7918c5f2bdf2cc'

  url 'http://emacsformacosx.com/emacs-builds/Emacs-2013-11-19_01-33-37-115148-universal-10.6.8.dmg'
  homepage 'http://emacsformacosx.com/'
  license :oss

  app 'Emacs.app'
end
