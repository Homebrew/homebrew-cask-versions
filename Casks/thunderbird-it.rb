cask 'thunderbird-it' do
  version '45.1.0'
  sha256 'c74cce6313b2cf18f50807b930c10a17ae721d1e9b1579f3ba68c2105f6a3fe0'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
