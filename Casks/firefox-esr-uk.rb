cask :v1 => 'firefox-esr-uk' do
  version '38.0.1'
  sha256 'a403737175eee03b449762aef6d87f1ddf889747e65ed6384214123bd31d7896'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/organizations/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
