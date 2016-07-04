cask 'thunderbird-gl' do
  version '45.2.0'
  sha256 '0c638e85ccef5f42d1696808053897c5a7c6cc35a309db985f2dc64f3b889c07'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
