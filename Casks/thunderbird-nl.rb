cask :v1 => 'thunderbird-nl' do
  version '31.7.0'
  sha256 '25700642ecad0b0f736e9a1d41a77cc8ec9393f8ebdc622be579cf3170b8b1f6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/nl/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
