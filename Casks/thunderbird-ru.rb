cask 'thunderbird-ru' do
  version '38.6.0'
  sha256 'c03ed3ab4355c4ebaa8db8a517b8a7bb13f0663c56e135011fc2c49187d877bf'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
