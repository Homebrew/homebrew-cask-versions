cask 'firefox-beta-ru' do
  version '49.0b1'
  sha256 '6866c3dd25137901d4a3f4ab5e9c9f32d10810613a0536ed351e32b640c8e1bf'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
