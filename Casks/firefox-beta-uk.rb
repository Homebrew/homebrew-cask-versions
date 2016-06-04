cask 'firefox-beta-uk' do
  version '48.0a2'
  sha256 '184a7b02ced4978d65fa60e236948381cf5e3a879d8a979e0041e5cfe2e6c175'

  url 'https://download.mozilla.org/?product=firefox-aurora-latest-l10n&os=osx&lang=uk'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
