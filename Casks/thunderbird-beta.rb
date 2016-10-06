cask 'thunderbird-beta' do
  version '49.0b1'
  sha256 '7edbe8645f4c14fc9fa40646353db96009b5bfa726179bd655568ff7e172874f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'

  app 'Thunderbird.app'
end
