cask :v1 => 'thunderbird-de' do
  version '38.2.0'
  sha256 'f88ab22e2105674c4ac3e63956be7493f9251de3e366d5a3e8134420f50e8688'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/de/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
