cask 'blender-daily' do
  version '2.77-a3ce64b'
  sha256 'f4302ebee4f109b4697eb649d30c79a555678b902c2ea31fddcd68ed74be9f19'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
