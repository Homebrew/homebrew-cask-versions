cask :v1 => 'firefox-beta-uk' do
  version '36.0b7'
  sha256 'f09eb215bfc6d960f96694afe57affc6004be1c50c1a794f10730e47add639d7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
