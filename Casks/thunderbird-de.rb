cask 'thunderbird-de' do
  version '45.2.0'
  sha256 'c43059cfde3ec0ab1879b859a0fc2cadf4e3d69869fc18793291a55a6fe3ee12'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
