cask 'firefox-beta-uk' do
  version '48.0b1'
  sha256 '3f23c23c874de4c9c4c67e7e12657b8e94ae3aae0c12078e260fb37e128a5bc7'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
