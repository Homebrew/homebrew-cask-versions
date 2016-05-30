cask 'thunderbird-de' do
  version '45.1.1'
  sha256 'b830c20ab771faeb05c793669f4208685b1ba3613877335901b9b9d7acc30e30'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
