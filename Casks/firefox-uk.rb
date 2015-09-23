cask :v1 => 'firefox-uk' do
  version '41.0'
  sha256 'c4ee7514109a3b522740f287e42264fd11ae292e1e23c4c4f584c5254084d363'

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
