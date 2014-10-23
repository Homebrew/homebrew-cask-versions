class IntellijIdeaUltimateEap < Cask
  version '139.144.2'
  sha256 '49ef8ac753287031ae3ed604bbfd7a19e46359b318ac581db0a6100fb5ae0beb'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :unknown

  app 'IntelliJ IDEA 14 EAP.app'
end
