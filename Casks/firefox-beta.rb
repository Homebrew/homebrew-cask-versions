cask :v1 => 'firefox-beta' do
  version '38.0.5b1'
  sha256 'e3da6aa7b564b09221b84576884f62be5d079320faba8276030d93ac44b2a229'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
