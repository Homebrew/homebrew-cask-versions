cask :v1 => 'firefox-beta-uk' do
  version '36.0b5'
  sha256 'a6a6eb7def1f23542e9babecc4dd99632939aaaa2573a331080f942a452574fe'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
