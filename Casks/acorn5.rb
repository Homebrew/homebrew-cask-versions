cask 'acorn5' do
  version '5.6.6'
  sha256 '2fda93b116ae910643e1383bf425cf30fa8c09e01edffc41730ee19594cff561'

  url 'http://flyingmeat.com/download/Acorn-5.6.6.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: '740a11ba7dd12a8d5f34d558f47913f25d50a9fb81c0496a6e7d03a940de15fb'
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/docs/faq.html'

  auto_updates true

  app 'Acorn.app'
end
