cask 'thunderbird-nl' do
  version '45.4.0'
  sha256 '6c1402dd7bdddfe6dfecd96dc48eface9f388bb1798f6a8842602b55bf57450a'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'

  app 'Thunderbird.app'
end
