class FirefoxFr < Cask
  version 'latest'
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=fr'
  homepage 'http://www.mozilla.org/fr/firefox/new/'

  link 'Firefox.app'
end
