cask :v1 => 'thunderbird-nl' do
  version '38.0.1'
  sha256 '7fee59428be0188d543a7ffb6ddbc864edb7e24305d7c0609bb59c0d5ffce11f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/nl/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
