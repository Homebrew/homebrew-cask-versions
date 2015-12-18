cask 'emacs-nightly' do
  version '2015-12-09_01-41-29-6148555'
  sha256 'ad4945bf88ae13bbe629806622aae30127067980ad03bb4881798564343b0024'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
