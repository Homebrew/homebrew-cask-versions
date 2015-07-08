cask :v1 => 'firefox-beta' do
  version '40.0b2'
  sha256 '7ebad1fd0183d750755838f983c389ae61bb3e3f63e1c9e20af5608eca4b5f94'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
