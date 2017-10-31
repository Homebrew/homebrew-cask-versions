cask 'acorn4' do
  version '4.5.8'
  sha256 '102ec9b772cda43558044c7108684e8136e9acb184f856515de5548584567e90'

  url 'http://flyingmeat.com/download/Acorn-4.5.8.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: 'c76c5507d33e8ef93b3910e91b2cfc513cf35bb6cd59daacf55462deaa40d400'
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/docs/faq.html'

  auto_updates true

  app 'Acorn.app'
end
