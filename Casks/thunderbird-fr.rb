cask :v1 => 'thunderbird-fr' do
  version '38.2.0'
  sha256 '026e781970d28354702c85c39f43eac833db08f522c274cfa6e58080254f0211'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
