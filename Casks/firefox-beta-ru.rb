cask 'firefox-beta-ru' do
  version '47.0b5'
  sha256 '5407714edd73e61f670858d628d0c7860efcf7ac17b6fc554cf6ed1650b81986'

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
