cask :v1 => 'emacs-nightly' do
  version '2015-10-02_01-41-03-f03311e'
  sha256 '208dcd8e514c65784bb2216cf234add6a6c46930d70530bcebff227dd1e7fcfb'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
