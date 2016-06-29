cask 'firefox-beta-ru' do
  version '48.0b4'
  sha256 'e0c9afa0202b068c0cea78b6228dafc4ddb632f753c84db71574691a1057cab1'

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
