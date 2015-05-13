cask :v1 => 'firefox-esr-uk' do
  version '38.0'
  sha256 '66697d73b9d9c138953c7933fdcfdb5ac37535c35506526c441832ac2a1730c0'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=uk"
  homepage 'https://www.mozilla.org/uk/firefox/organizations/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
