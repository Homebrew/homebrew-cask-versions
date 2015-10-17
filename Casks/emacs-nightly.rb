cask :v1 => 'emacs-nightly' do
  version '2015-10-17_01-41-00-4328d3d'
  sha256 '8b9ece15a1357fb9f8f78c3ecd902acc4803fcbdedb9f6c643cd175977cc4cf0'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
