class IntellijIdeaCommunityEap < Cask
  version '14-PublicPreview'
  sha256 'bcea58e2f59356e9b10e33d40adbcd7ec711bbd15c410d53f3a3695c517f2b67'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'

  app 'IntelliJ IDEA 14 CE EAP.app'
end
