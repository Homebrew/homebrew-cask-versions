cask 'emacs-nightly' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    file = URI('https://emacsformacosx.com/atom/daily').open.read.scan(%r{href="([^"]+.dmg)"}).flatten.first
    file.to_s
  end
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
