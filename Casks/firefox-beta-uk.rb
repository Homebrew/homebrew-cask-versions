cask :v1 => 'firefox-beta-uk' do
  version '38.0.5b1'
  sha256 '5079c8f030ba0ba9669fbce189a13bb4a1c7e2e2f58bf56e5e823109089ac7f2'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
