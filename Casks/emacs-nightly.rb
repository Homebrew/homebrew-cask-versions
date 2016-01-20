cask 'emacs-nightly' do
  version '2016-01-20_01-40-56-b895c72059521fec064ff27b4cfcfa4104081c4e'
  sha256 '840f264b9fd94c6f7a873f6d8a5018c1a43121168b00246aae4738c72865b812'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
