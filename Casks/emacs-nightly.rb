cask :v1 => 'emacs-nightly' do
  version '2015-10-28_01-41-03-6e2a402'
  sha256 'aa3d85f82d4f00f6018be2764275fcbe476cafabff5170c3df45811b9f54d196'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :gpl

  app 'Emacs.app'
end
