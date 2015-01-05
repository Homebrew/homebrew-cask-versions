cask :v1 => 'intellij-idea-ce-eap' do
  version '139.872.1'
  sha256 '77be4e3d1e9855da7d34fc15acf6843d58e1a5776e943da7b9e9c9857be6121c'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'IntelliJ IDEA 14 CE EAP.app'
end
