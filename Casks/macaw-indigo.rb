class MacawIndigo < Cask
  version '1.5.4.0'
  sha256 'a98bc077cff020951fed2fc04e47b4182cd1c93b9882a53f89955b9b4f7a37f7'

  url "http://indigo.macaw.co/#{version}/MacawIndigo#{version}.dmg"
  appcast 'http://indigo.macaw.co/appcast.xml'
  homepage 'http://indigo.macaw.co/'

  link 'Macaw Indigo.app'
end
