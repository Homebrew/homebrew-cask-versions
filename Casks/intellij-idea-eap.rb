cask :v1 => 'intellij-idea-eap' do
  version '139.791.2'
  sha256 'bb9859ab068360cefe2351c84b3c96653c7395351102e4ab03f2b7834753c0cb'

  url "http://download-cf.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :commercial

  app 'IntelliJ IDEA 14 EAP.app'
end
