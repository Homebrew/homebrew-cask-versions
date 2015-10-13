cask :v1 => 'emacs-nightly' do
  version '2015-10-12_01-41-17-1a588cb'
  sha256 '06acdcd2d43b9f5461e337cd97d3aaede23dea1d5277668a66eeeb81a7f36009'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
