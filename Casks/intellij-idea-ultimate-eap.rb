class IntellijIdeaUltimateEap < Cask
  version '139.222.5'
  sha256 '172f9b8fd38a8062250b2fbde7f66e81d07cd43029842fe5080ac00bff8d65ee'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :commercial

  app 'IntelliJ IDEA 14 EAP.app'
end
