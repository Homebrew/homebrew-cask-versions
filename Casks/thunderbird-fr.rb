cask 'thunderbird-fr' do
  version '38.7.1'
  sha256 'f3fa6c7ffbacbb5dee078ef0614f33e0b1420d56ef88adc95d39393e69972391'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
