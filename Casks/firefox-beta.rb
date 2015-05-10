cask :v1 => 'firefox-beta' do
  version '38.0b9'
  sha256 'f3c9112a3afea5f43cb93cbb05dbc9e5a7344b9d983edf68626011b54d9395c8'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
