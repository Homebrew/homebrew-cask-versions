cask :v1 => 'intellij-idea-ce-eap' do
  version '139.223.8'
  sha256 '4d0defb89f74288e9f26153b787f4a142504df01d83e96dfa749e01f791de57f'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'

  app 'IntelliJ IDEA 14 CE.app'
end
