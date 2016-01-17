cask 'firefox-esr-uk' do
  version '38.4.0'
  sha256 '02aac6a4a86c99cd0d16309bd26a40a969bcd9a87d819babb5c133e684cf67b3'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                   '~/Library/Application Support/Firefox',
                   '~/Library/Caches/Firefox',
                 ]
end
