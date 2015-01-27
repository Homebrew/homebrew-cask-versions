cask :v1 => 'firefox-beta-gb' do
  version '36.0b3'
  sha256 '65c03ec7294bcf1365c09a138ee4338b22f2d99965a359f5d4edd19dcba9a33c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
