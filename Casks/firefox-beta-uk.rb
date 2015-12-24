cask 'firefox-beta-uk' do
  version '42.0b9'
  sha256 '4b5e5f6f24328b5b575c604462071ae007b9017ad0ed1e7bcca2ac4ef6d068dd'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
