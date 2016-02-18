cask 'thunderbird-it' do
  version '38.6.0'
  sha256 '1f1b262a4472e7df656d9685b0ca72fb55972bd36482ab1286c8cadcf75c1180'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
