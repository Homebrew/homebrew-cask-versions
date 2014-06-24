class MacawIndigo < Cask
  version '1.0.13.1'
  sha256 'f523f371c1dd3ebfc3a083065c7056af3cb076ddb7c699c30a11627dba656892'

  url "http://indigo.macaw.co/#{version}/MacawIndigo#{version}.dmg"
  appcast 'http://indigo.macaw.co/appcast.xml'
  homepage 'http://indigo.macaw.co/'

  link 'Macaw Indigo.app'
end
