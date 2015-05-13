cask :v1 => 'thunderbird-beta' do
  version '38.0b4'
  sha256 '07e8d88b0a1c37b9770f24b35e513fd27eefb7d34dca20236499692573739503'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
