cask 'emacs-nightly' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = 'https://emacsformacosx.com/atom/daily'
    file = URI(base_url).open.read.scan(%r{href="([^"]+.dmg)"}).flatten.first
    file.to_s
  end
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
