cask 'thunderbird-gl' do
  version '45.3.0'
  sha256 'e55163af518cd04c5226adca7e7f7ab24d82c7ce78964e77ae931ca7d129c86b'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
