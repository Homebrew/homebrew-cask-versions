cask 'palemoon' do
  version '27.5.0'
  sha256 '019686a754204f0691722d332d28678509a32cbfadbde17a0d005435ff9da369'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Palemoon'
  homepage 'https://www.palemoon.org/'

  app 'Palemoon.app'
end
