cask :v1 => 'emacs-nightly' do
  version '2015-09-09_01-41-02-39dca94'
  sha256 'b24a2c916dd0bad210acabd57b15c4164af0f3cd0c25fba50eaceddf4c82f75a'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
