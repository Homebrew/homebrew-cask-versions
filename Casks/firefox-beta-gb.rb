cask :v1 => 'firefox-beta-gb' do
  version '36.0b5'
  sha256 '92c1e3f66ddcb3d51a1aa1d09cf15d1566b3553dc250d3b93ff3fabedf26e9c7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
