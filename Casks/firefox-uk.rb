cask 'firefox-uk' do
  version '44.0.1'
  sha256 '186db3292ecb1f70ce75aac4c8eb8020218280886dd46bee626c4ab5f2cdd062'

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
