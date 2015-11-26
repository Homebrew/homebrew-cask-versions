cask :v1 => 'thunderbird-it' do
  version '38.4.0'
  sha256 'b26a2eb688f8d5bc095dffd6e2d35b7ed023415affff1616a9fa47bf94f48de8'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
