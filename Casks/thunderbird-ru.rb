cask 'thunderbird-ru' do
  version '38.7.2'
  sha256 'cd745b1962fec89e84ba9e28d48e2e90ac0822a94c7059dcf99acf259a30783d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
