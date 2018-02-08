cask 'palemoon' do
  version '27.7.2'
  sha256 '7af4150b92112ee938cd94dc42e8708b5bf92e1dc85868242761758d9684e762'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Palemoon'
  homepage 'https://www.palemoon.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'NewMoon.app', target: 'Palemoon.app'
end
