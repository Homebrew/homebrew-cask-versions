class FirefoxIt < Cask
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=it'
  homepage 'http://www.mozilla.org/it/firefox/new/'
  license :oss

  app 'Firefox.app'
end
