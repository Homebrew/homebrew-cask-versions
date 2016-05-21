cask 'firefox-beta-uk' do
  version '47.0b7'
  sha256 'c1c63554fea9b09e8d8757838adc4749a559873302adb64d8dae7f4628e5fb56'

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
