cask :v1 => 'thunderbird-fr' do
  version '31.6.0'
  sha256 '241a9175b34f190f5b485326a2c119571b451e0c14e1a7d04af27e49792ab245'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
