cask :v1 => 'firefox-esr-ru' do
  version '38.0'
  sha256 'af4e2aef6ed0cd43ef5f2fb1214e34b5ffa79cf3b090a3eca12db77cec672240'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=ru"
  homepage 'https://www.mozilla.org/ru/firefox/organizations/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
