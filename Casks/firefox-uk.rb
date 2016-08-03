cask 'firefox-uk' do
  version '48.0'
  sha256 '327d773e49ee71764961a848bd570f5eb2adf1b426470d94d2e0dd0cd31e8ddc'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
