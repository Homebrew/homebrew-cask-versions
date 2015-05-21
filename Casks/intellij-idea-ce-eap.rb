cask :v1 => 'intellij-idea-ce-eap' do
  version '141.1192.2'
  sha256 '18f8ecfa66e2e687cab6ddd844bde8996ecb54eb93279a8e8ce5e43a9aa6def3'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14.1+EAP'
  license :apache

  app 'IntelliJ IDEA 14 CE EAP.app'
end
