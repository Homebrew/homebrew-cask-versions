cask 'firefox-de' do
  version '45.0.1'
  sha256 '778a8ae2ba956bee60373499c8419b2b470a323e2322ac59e94eccbadb6d6632'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/de/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
