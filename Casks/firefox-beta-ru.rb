cask :v1 => 'firefox-beta-ru' do
  version '40.0b2'
  sha256 '27b1a4f7d16257bb5c0e377ee2fb1b69cd4f267701ea40391e4dc0e68b1b1224'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
