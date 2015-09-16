cask :v1 => 'thunderbird-gl' do
  version '38.2.0'
  sha256 'b88856ba6ef00210c86d568ee4a10c0108d62ef7d4e5e15968d81037410d7b72'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
