cask 'thunderbird-it' do
  version '38.7.1'
  sha256 '2634e071f02165e6a39eaa1ae7bd4f6f70506fbed6be9f7e33f0137b12f2fdbd'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
