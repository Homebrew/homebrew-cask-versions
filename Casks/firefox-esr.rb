cask :v1 => 'firefox-esr' do
  version '31.5.0'
  sha256 'e3e385b6cf0ae3ea0c8e816c997c96819ad6ae8b947b2130f2922b38aa4ac3e7'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/organizations/'
  license :mpl

  app 'Firefox.app'
end
