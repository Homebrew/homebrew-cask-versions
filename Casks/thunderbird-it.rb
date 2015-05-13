cask :v1 => 'thunderbird-it' do
  version '31.6.0'
  sha256 '089ac641055e607404a0d78ed12bd237489d504c42c320e6f4cadb756eabf75f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
