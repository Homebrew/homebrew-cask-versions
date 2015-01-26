cask :v1 => 'intellij-idea12' do
  version '12.1.7b'
  sha256 '4f98af36f7747323d6a83a8d758aa0d6f02f20faa5da5a9e5bd8b7856cfe429a'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://www.jetbrains.com/idea/index.html'
  license :unknown

  app 'IntelliJ IDEA 12.app'
end
