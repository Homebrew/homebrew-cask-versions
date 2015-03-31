cask :v1 => 'firefox-beta-gb' do
  version '37.0b7'
  sha256 '9cf64561a2abf2b4e15802d0a2fdfc8f81191983e74256b26da2e9dc7e9d4b11'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
