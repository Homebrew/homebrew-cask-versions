cask 'palemoon' do
  version '27.6.2'
  sha256 '56d6f8a768e3f41fa7da523406c1054c5d1edd1c093a5e3de2b5b03262c54e9f'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Palemoon'
  homepage 'https://www.palemoon.org/'

  app 'Palemoon.app'
end
