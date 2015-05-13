cask :v1 => 'thunderbird-gl' do
  version '31.6.0'
  sha256 'b0cc0e9bef5d62b82fcd37f57d03b852bcaadd9344d8ac1cb09bb6c1eca92a54'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
