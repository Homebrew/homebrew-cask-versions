cask 'thunderbird-gl' do
  version '38.5.1'
  sha256 '2f0f7b6f16b9819697c6a2d08700fc955e430d82cbfddff009262f81f1ada9e5'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
