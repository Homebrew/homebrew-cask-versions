cask 'firefox-beta-uk' do
  version '47.0b2'
  sha256 'b2b062ef8e2fb3adb84e9879ddb1c0319fcc50aabf356edb24a0d23b5128e141'

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
