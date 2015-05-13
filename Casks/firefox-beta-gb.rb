cask :v1 => 'firefox-beta-gb' do
  version '38.0.5b1'
  sha256 '6e95c61bc50208dc61165005dcbc5bded08e6a204bbe2c32aecec7a4af42dfd7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
