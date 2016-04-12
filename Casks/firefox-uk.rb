cask 'firefox-uk' do
  version '45.0.2'
  sha256 'a01540af450cac9d531f31cd6badee540ff2886f98dbe1ab0d476b57a3c337df'

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
