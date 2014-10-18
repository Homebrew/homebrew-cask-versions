class IntellijIdeaUltimateEap < Cask
  version '139.69.2'
  sha256 '708d453e36fd34df86f9a13d6aa7765cad060ba03b41bdc24f3aef98b7c7fc0d'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :unknown

  app 'IntelliJ IDEA 14 EAP.app'
end
