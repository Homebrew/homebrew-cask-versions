cask 'firefox-beta-ru' do
  version '49.0b3'
  sha256 '59c9b1d9e21b5577be11a064edf04aee6d3267ac31376ff59c96f3ac2d6a0550'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
