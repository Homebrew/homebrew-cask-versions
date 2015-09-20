cask :v1 => 'thunderbird-beta' do
  version '41.0b2'
  sha256 '8ee47c8344a144d7b0a2ef069226aa1310bcdc83538a747fb8cc667ae3a3bf1f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
