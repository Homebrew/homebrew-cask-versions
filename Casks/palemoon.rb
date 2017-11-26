cask 'palemoon' do
  version '27.6.1'
  sha256 '393b22e2ee19f97546abb2a117dd6794d11706e66499d43b9d726c5f6d25a656'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Palemoon'
  homepage 'https://www.palemoon.org/'

  app 'Palemoon.app'
end
