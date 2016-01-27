cask 'firefox-it' do
  version '44.0'
  sha256 '1fd0f51e246c0cb6d3774fc2741662adf45bae791d1ee8f33d2e9f0c6fb715d9'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=it"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/it/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
