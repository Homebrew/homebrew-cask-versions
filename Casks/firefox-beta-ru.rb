cask 'firefox-beta-ru' do
  version '47.0b8'
  sha256 '6e352389d70651ea4f021fda89211ef169f8eb35d6ef65b839f138713b1c8c0a'

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
