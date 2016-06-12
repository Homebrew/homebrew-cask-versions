cask 'thunderbird-beta' do
  version '47.0b1'
  sha256 '037bf742736f9da28c8835351fedbac032090b19053fe4e87e11752140a97eb7'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end
