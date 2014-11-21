cask :v1 => 'intellij-idea-ce-eap' do
  version '139.463.4'
  sha256 '21b6a0241d43ea3c8755df518b87a6bef7341b85662b1aaf0c3bbc9a4fdcfac9'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'

  app 'IntelliJ IDEA 14 CE EAP.app'
end
