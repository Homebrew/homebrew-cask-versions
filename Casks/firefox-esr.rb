cask :v1 => 'firefox-esr' do
  version '38.0'
  sha256 'c25cc2c83b4c11676828f9aae6f2be7dcaee8cf75747203b9dc06a90cbf2697d'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/organizations/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
