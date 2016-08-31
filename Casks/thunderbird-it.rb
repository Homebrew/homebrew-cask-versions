cask 'thunderbird-it' do
  version '45.3.0'
  sha256 '9056799a7588480f2942ab5d7bc26608a8d7cc672b15acaf21aa8f2624cf9da6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
