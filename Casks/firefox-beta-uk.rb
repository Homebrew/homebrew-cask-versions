cask :v1 => 'firefox-beta-uk' do
  version '40.0b2'
  sha256 '745823dcbeda6c47cfb513e6581b25510ee3b016085a6a93af046ae3a886be09'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
