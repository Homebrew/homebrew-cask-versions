cask :v1 => 'intellij-idea14_0' do
  version '14.0.4'
  sha256 'b733aa89ffc48ee9b487bc6afb1f3efad79ae0de4e1ab0bb5b3fd840bc5cc52c'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/'
  license :commercial

  app 'IntelliJ IDEA 14.app'
end
