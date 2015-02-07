cask :v1 => 'intellij-idea-ce-eap' do
  version '140.2110.5'
  sha256 'f9bc38f14eadea7067df952bd1dfb223a0a10d22f541a76379896cd088e93cda'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14.1+EAP'
  license :oss

  app 'IntelliJ IDEA 14 CE EAP.app'
end
