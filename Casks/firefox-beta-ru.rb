cask :v1 => 'firefox-beta-ru' do
  version '37.0b2'
  sha256 '2f2216352491d534ace48148004570857c829df00fb0ef0f5572393f0d84d10b'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
