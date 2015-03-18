cask :v1 => 'intellij-idea-ce-eap' do
  version '141.175.3'
  sha256 '888a873904f3db7fcb6e5fcf07057f8a57bcca9587c5f1f5717dbd52a56676d1'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14.1+EAP'
  license :oss

  app 'IntelliJ IDEA 14 CE EAP.app'
end
