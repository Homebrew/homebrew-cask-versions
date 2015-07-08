cask :v1 => 'firefox-beta-de' do
  version '40.0b2'
  sha256 '4660ab57ed5c3b5c1b5dd2436df2c8c5cf1f353d245bbf2e80b17336268ee634'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
