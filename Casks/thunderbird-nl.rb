cask 'thunderbird-nl' do
  version '45.1.0'
  sha256 '74e6f4873f24a631531406dec2dc74fd5648e0a9ba759958d9cef298ef7475ee'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
