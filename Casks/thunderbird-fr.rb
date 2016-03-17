cask 'thunderbird-fr' do
  version '38.7.0'
  sha256 '99bbb6b7eda7ed8dc7a72579e242e7555b2366eca4c9cce218a55a4d39bb66e8'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
