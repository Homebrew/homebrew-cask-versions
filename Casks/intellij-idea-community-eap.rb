class IntellijIdeaCommunityEap < Cask
  version '139.144.2'
  sha256 '4f06f206d4e3435d0d2b2c803637db7645ab8c762fbdbd6038384971074e16b8'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'

  app 'IntelliJ IDEA 14 CE EAP.app'
end
