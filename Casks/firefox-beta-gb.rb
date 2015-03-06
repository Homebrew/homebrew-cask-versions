cask :v1 => 'firefox-beta-gb' do
  version '37.0b2'
  sha256 '649e005972610ab11bc33ab1ba6d3ee6040d7f27a6a5637b4699bf8f0f02f63d'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
