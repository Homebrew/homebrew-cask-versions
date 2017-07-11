cask 'palemoon' do
  version '27.3.0'
  sha256 '423ec593ba6e8c5d2ccc034b3240e5bc783e46ce0ab9b01c87806b04aa0b2f28'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Pale Moon'
  homepage 'https://www.palemoon.org/'

  app 'PaleMoon.app'
end
