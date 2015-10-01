cask :v1 => 'firefox-uk' do
  version '41.0.1'
  sha256 '044647b754f69a4a39971a0318a47bac93d880b5545d20835db6c685d6d9fe33'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  name 'Firefox'
  homepage 'https://www.mozilla.org/uk/firefox/new'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
