cask :v1 => 'intellij-idea-ce-eap' do
  version '141.1009.5'
  sha256 '185afd9f8d164e9488c751d09ce3b7bc8cf1bc2299f897c58f3c533c31fb10cd'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14.1+EAP'
  license :oss

  app 'IntelliJ IDEA 14 CE EAP.app'
end
