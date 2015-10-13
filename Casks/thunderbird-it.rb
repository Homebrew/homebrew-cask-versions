cask :v1 => 'thunderbird-it' do
  version '38.3.0'
  sha256 '581b83ba69448f5df5573dc265ad6213bdd3095eb6a5ad821b05c15000066ebb'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
