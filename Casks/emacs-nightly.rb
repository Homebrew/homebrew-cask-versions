cask :v1 => 'emacs-nightly' do
  version '2015-11-29_01-41-12-9a2363e'
  sha256 '8c436ecd4ac2ea2992792a0490fb99bf0161cdb091695f25df7680d40ad21bcd'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
