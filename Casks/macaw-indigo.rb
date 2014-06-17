class MacawIndigo < Cask
  version '1.0.12'
  sha256 '51f740a899b4605af5603bf4c8ea4f81a167bf7a41eebfaeeebaa132d5867bd2'

  url "http://indigo.macaw.co/#{version}/MacawIndigo#{version}.dmg"
  appcast 'http://indigo.macaw.co/appcast.xml'
  homepage 'http://indigo.macaw.co/'

  link 'Macaw Indigo.app'
end
