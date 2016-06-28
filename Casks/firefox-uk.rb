cask 'firefox-uk' do
  version '47.0.1'
  sha256 'b43ed24b7f62fc361324e97b9f4739469faff603aacaa2ee7f08aa7a6ad129fc'

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
