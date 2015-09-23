cask :v1 => 'firefox-gl' do
  version '41.0'
  sha256 'b0914b8d5e2309843fe0e9c296bc66a68c6e5a47eab13ede3b3e8f6261b63ade'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=gl"
  name 'Firefox'
  homepage 'https://www.mozilla.org/gl/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
