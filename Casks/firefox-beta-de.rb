cask :v1 => 'firefox-beta-de' do
  version '36.0b4'
  sha256 'ea602e851cf1d76219e6bdc2e285e1708ac3565e4f11efb8afbd50115f0f9550'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
