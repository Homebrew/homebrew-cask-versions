cask :v1 => 'firefox-esr-ru' do
  version '38.0.1'
  sha256 'ebc6f10a0672dd2c0283e19783066c33a0b3df1869808f148afdc5b0139ab12c'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=ru"
  homepage 'https://www.mozilla.org/ru/firefox/organizations/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
