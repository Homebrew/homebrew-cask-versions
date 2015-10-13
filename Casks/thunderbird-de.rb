cask :v1 => 'thunderbird-de' do
  version '38.3.0'
  sha256 '805dcdd6a4683080f941ffb28bd30156ab5bd113d2fead1992f7f292c9f2c89d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/de/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
