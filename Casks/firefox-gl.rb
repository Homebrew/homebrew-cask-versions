cask 'firefox-gl' do
  version '45.0.2'
  sha256 '4cb8bd63a6ca75660d89fa1f005d5f38f4a842c9fced3fef5f52ebcad8a69401'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
