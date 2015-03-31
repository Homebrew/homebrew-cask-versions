cask :v1 => 'firefox-beta-ru' do
  version '37.0b7'
  sha256 'aa321d108121d10e17f31e5309543de49b9d59c53f0bc09e5bb44469f472c7e9'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
