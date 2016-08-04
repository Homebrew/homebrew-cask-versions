cask 'firefox-beta-uk' do
  version '49.0b1'
  sha256 'a32ba374012e7d15d00f8892d28c417ba237c5667cd255511132aee5a23f0381'

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
