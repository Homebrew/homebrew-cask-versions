cask 'thunderbird-gl' do
  version '45.1.0'
  sha256 '3230b8890475d1671728efae41fca989b4832b319376be80bab99793176383a1'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
