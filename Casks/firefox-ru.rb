cask 'firefox-ru' do
  version '43.0.4'
  sha256 'daeb590bbcdfeb95f1ec0087b6a1796280054da5a9077b3cc49df4750539a35a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ru/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
