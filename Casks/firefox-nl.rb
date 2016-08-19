cask 'firefox-nl' do
  version '48.0.1'
  sha256 '85ec0960a30aae74232d3ffeeb9d4d953ad02a5f0cff2278f4c8ec4e70e5d343'

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
