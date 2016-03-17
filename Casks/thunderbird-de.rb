cask 'thunderbird-de' do
  version '38.7.0'
  sha256 '6fa58ebb067aca50f7fb687633265cf4b3361a88a933823ba1cc165d044666b3'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
