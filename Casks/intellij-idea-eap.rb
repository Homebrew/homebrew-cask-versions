class IntellijIdeaEap < Cask
  version '139.223.8'
  sha256 '63c18d657fa03170aed825049d900aaf8a25618c4c4a1191c670face3216b48a'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :commercial

  app 'IntelliJ IDEA 14.app'
end
