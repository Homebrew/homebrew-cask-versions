cask 'thunderbird-pt-br' do
  version '45.4.0'
  sha256 '314ec5dd4962acb9d0545fe2817a043aaae36cb1b576ec5083c9ef42cf22b53f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt-BR/thunderbird/'

  app 'Thunderbird.app'
end
