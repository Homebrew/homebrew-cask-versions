cask :v1 => 'thunderbird-beta' do
  version '38.0b6'
  sha256 '4701cd01c71f2b2db27c92abba37e272186a31188843f6646284a4ab3b9377bf'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
