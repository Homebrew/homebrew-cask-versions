class IntellijIdeaCommunityEap < Cask
  version '138.2210.3'
  sha256 'b92a8b3d7cc2e569d35f2548fd2151e75e97cca08613957767d86664194e50cd'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'
  license :unknown

  app 'IntelliJ IDEA 14 CE EAP.app'
end
