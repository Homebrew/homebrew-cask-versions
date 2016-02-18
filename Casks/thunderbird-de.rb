cask 'thunderbird-de' do
  version '38.6.0'
  sha256 '8b715717918e095936304dd00f74f1a866c679cc7a466e325faf75b99f741d7f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
