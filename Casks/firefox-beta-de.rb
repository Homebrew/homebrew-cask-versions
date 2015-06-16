cask :v1 => 'firefox-beta-de' do
  version '39.0b5'
  sha256 'c3e72cff81322e290296db2c1c031e77800c2a5cb879d12c023f3c5c118dbad3'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
