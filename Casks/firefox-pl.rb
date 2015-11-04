cask :v1 => 'firefox-pl' do
  version '42.0'
  sha256 'ff0e1371ca39c1bbfa7c1a972eac17a78540e0c0c39f5c184ed31b5136039443'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=pl"
  name 'Firefox'
  homepage 'https://www.mozilla.org/pl/firefox/desktop'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
