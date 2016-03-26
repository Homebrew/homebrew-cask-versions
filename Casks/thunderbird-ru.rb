cask 'thunderbird-ru' do
  version '38.7.1'
  sha256 '9aa2f4b1c820bc1b7f1573143003d4a3cac8ae7626354898f3e9697358d781ca'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
