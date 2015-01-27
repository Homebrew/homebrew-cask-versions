cask :v1 => 'firefox-beta' do
  version '36.0b3'
  sha256 '76dc27848dc960b33a2f51002559f0c391e43ea18e948779555547a0db2118ba'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
