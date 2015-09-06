cask :v1 => 'thunderbird-beta-ru' do
  version '40.0b1'
  sha256 'b1551fe27e7cdfa997d03cd1e5c4c96245ae10f1ec530cad4a2862f8b3725757'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
