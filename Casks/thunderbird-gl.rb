cask 'thunderbird-gl' do
  version '45.4.0'
  sha256 '4f03e389ce1972db0b9225fd1272b52667ed09636fb83e53c096c774fecdd8e4'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'

  app 'Thunderbird.app'
end
