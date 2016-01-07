cask 'firefox-nl' do
  version '43.0.4'
  sha256 'a62b187e171f43d907732d65e748638775af5bca25dc0e0cac5bbfdd579dd36a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Firefox'
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
