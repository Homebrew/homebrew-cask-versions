cask :v1 => 'firefox-beta-gb' do
  version '39.0b5'
  sha256 '8171c2a05e303b0366020f7dde59a65bafaf16dff7d4a63b84b912610ee6539d'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
