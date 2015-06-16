cask :v1 => 'firefox-beta-uk' do
  version '39.0b5'
  sha256 '8e9206d9a9a0dd6cc7e881bf4738478671275674f8e1a14051b433d6fca0fb1c'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
