cask 'firefox-uk' do
  version '43.0.4'
  sha256 'c2fb1e961126fe96010e60c7fc2402759e3400b5a76f3f65a8c07b47213c904d'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/new'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                   '~/Library/Application Support/Firefox',
                   '~/Library/Caches/Firefox',
                 ]
end
