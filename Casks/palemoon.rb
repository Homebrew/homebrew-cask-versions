cask 'palemoon' do
  version '27.7.0'
  sha256 'ec7049d57771fde31214ea9e87606184a44993aa3c1a1b912a4e144abcbcfbad'

  url "https://mac.palemoon.org/dist/palemoon-#{version}.mac64.dmg"
  name 'Palemoon'
  homepage 'https://www.palemoon.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'NewMoon.app', target: 'Palemoon.app'
end
