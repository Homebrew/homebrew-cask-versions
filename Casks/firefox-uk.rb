cask 'firefox-uk' do
  version '47.0'
  sha256 '5e03cc1d078eec7a0c6b18bbc973d9ccc4bb3453b16a88dc0ecbc5a1f0c0c47e'

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
