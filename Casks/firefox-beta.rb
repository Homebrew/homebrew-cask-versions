cask :v1 => 'firefox-beta' do
  version '38.0.5b2'
  sha256 '51054175be49e60f1210ab76cd9cd46116d9c272efc3181c660f277f8a727216'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
