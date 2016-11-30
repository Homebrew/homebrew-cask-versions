cask 'palemoon' do
  version '27.0.1'
  sha256 'b004dabe39b79cbe9afe39d5c43c3ca6152c78b29a118e335426b1215e0aa94b'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Pale Moon'
  homepage 'https://www.palemoon.org/'

  app 'PaleMoon.app'
end
