cask 'palemoon' do
  version '27.6.0'
  sha256 'bbc66f26c422667ce2d33dbf6bfc07d4c4583830a7a1dac5eeef6cb804bd0e9f'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Palemoon'
  homepage 'https://www.palemoon.org/'

  app 'Palemoon.app'
end
