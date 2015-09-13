cask :v1 => 'thunderbird-beta' do
  version '41.0b1'
  sha256 '8903ae1af1be6a0a2fdf80d1f1b383b97ce80f6a598ea6d2908e27573a7b9e59'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
