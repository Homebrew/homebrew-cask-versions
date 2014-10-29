class IntellijIdeaCommunityEap < Cask
  version '139.222.5'
  sha256 '67435b03dc9fe08753823235c089e367d989ef62c61ee35e104cf036fbebe885'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'

  app 'IntelliJ IDEA 14 CE EAP.app'
end
