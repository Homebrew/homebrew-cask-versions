cask 'thunderbird-ru' do
  version '45.3.0'
  sha256 'a6f7da29d250085589ad2a3318f4035ddc29c1c4a5d219a09fbe38b6050bcf4e'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
