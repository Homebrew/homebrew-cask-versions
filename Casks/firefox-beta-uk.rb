cask 'firefox-beta-uk' do
  version '47.0b3'
  sha256 'eeaff5165b419c590a3825e15ce2d57bc6ba66a06f83d3e7198fef1c275b2891'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
