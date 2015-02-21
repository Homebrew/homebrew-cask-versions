cask :v1 => 'thunderbird-gl' do
  version '31.4.0'
  sha256 '36fe75ceae334fabbff74ed49a30755b87a9e2f1ec6af54551794151bd74021f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
