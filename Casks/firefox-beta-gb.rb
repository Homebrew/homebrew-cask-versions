cask :v1 => 'firefox-beta-gb' do
  version '36.0b4'
  sha256 '415a3e4239d7ea7b1e2925b17ce03d15457b1a1905e65b43e8fc216b30da7b2a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
