cask 'thunderbird-gl' do
  version '45.1.1'
  sha256 '4939f926223ce0f40cd254e8fabcb2bff69997292bb0402bf0bdc71c8b9f9a54'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
