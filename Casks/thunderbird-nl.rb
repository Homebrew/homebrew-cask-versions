cask 'thunderbird-nl' do
  version '38.7.2'
  sha256 '3084b1ff6e0a2d1f90bebb13ea3c4e099306f0da0f8e39dcf64f546307d4431a'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
