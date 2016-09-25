cask 'firefox-esr' do
  version '45.4.0'
  sha256 '4e40d588b838709822bd3ccc1edbd13f055df8daf73d1024bcc6c9cbe07ef1e9'

  # mozilla.net was verified as official when first introduced to the cask
  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=en-US"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
