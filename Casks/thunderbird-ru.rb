cask :v1 => 'thunderbird-ru' do
  version '38.2.0'
  sha256 'c5a17345a0965814b0988c14db17bd76e70af6ccf3b1f4abc01e309976d3bc12'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/ru/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
