cask :v1 => 'firefox-de' do
  version :latest
  sha256 :no_check

  url 'https://download.mozilla.org/?product=firefox-latest&os=osx&lang=de'
  homepage 'https://www.mozilla.org/de/firefox/'
  license :oss

  app 'Firefox.app'
end
