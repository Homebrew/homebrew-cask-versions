cask :v1 => 'emacs-nightly' do
  version '2015-12-02_01-41-26-098738f'
  sha256 '1eaa4674b20e5c4b51bf04961aca9f6b2ccbd02871b1c79b2170cb78b0abd5e3'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
