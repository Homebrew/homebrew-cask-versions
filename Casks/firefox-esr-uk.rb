cask 'firefox-esr-uk' do
  version '45.4.0'
  sha256 '80914bfd90e2ac05da3c18ea77662f783b8e11786458bf68b215bf7961ad9629'

  # mozilla.net was verified as official when first introduced to the cask
  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
