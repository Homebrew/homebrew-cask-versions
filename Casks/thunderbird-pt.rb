cask 'thunderbird-pt' do
  version '38.4.0'
  sha256 '5bcf8c8b001501b3d7c47a102fbdc4f1434ca8894174a56290aef51792366e38'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
