class FirefoxDe < Cask
  version 'latest'
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=de'
  homepage 'https://www.mozilla.org/de/firefox/'

  link 'Firefox.app'
end
