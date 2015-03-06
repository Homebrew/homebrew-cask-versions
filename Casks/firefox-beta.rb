cask :v1 => 'firefox-beta' do
  version '37.0b2'
  sha256 '191d855e2169bf4ac38a3121af9f373a2432e851670336bab8fcd9f379a06053'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'
end
