cask 'acorn5' do
  version '5.6.6'
  sha256 '2fda93b116ae910643e1383bf425cf30fa8c09e01edffc41730ee19594cff561'

  url "https://secure.flyingmeat.com/download/Acorn-#{version}.zip"
  appcast "https://secure.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
