cask 'palemoon' do
  version '27.2.1'
  sha256 'bfc9ed4a2f2f18d5738d924b37dd96b1d1be4be9f4f94a528d8689667a0c2b46'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Pale Moon'
  homepage 'https://www.palemoon.org/'

  app 'PaleMoon.app'
end
