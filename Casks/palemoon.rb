cask 'palemoon' do
  version '27.5.1'
  sha256 '40951232738cb643a3365e42fd7730975413a4d8ee0632e6ccb78cf618d8bfda'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Palemoon'
  homepage 'https://www.palemoon.org/'

  app 'Palemoon.app'
end
