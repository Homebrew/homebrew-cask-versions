cask 'palemoon' do
  version '27.8.1'
  sha256 'a51a8b35dada92475d06ad8d29a23463e82b71964945ca36f96a6a3d0234f343'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Palemoon'
  homepage 'https://www.palemoon.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'NewMoon.app', target: 'Palemoon.app'
end
