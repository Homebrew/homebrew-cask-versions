cask :v1 => 'firefox-beta-ru' do
  version '38.0.5b1'
  sha256 '46f75be229783b3378ca9f893db852426b7c57f1256c843d680b724709cd2f2f'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
