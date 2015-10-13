cask :v1 => 'thunderbird-ru' do
  version '38.3.0'
  sha256 '6a22af1c034bfb2ee38a857a7854883dd72f88cd6b09bd225dcefa2db7590892'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/ru/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
