cask 'thunderbird-fr' do
  version '45.1.1'
  sha256 'b390e05cb9f4e8fd7968c10b679b7e85301dcc7348f90cf8ce3e6f69bc60259c'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
