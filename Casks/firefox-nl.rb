cask 'firefox-nl' do
  version '49.0.1'
  sha256 '29db6caf2633c43188306974edafcd2a951d1dcbe08aca37c017e5f95611c1fd'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
