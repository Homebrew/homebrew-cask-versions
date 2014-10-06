class IntellijIdeaCommunityEap < Cask
  # last release: 138.2458.8
  version '14'
  sha256 'bcea58e2f59356e9b10e33d40adbcd7ec711bbd15c410d53f3a3695c517f2b67'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}-PublicPreview.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'

  app "IntelliJ IDEA #{version} CE EAP.app"
end
