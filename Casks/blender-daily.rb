cask :v1 => 'blender-daily' do
  version '2.76-741cf19'
  sha256 '512b2acd344b5f2997c1446ec7ccafa15dad7ff358c10afc3bb5812c08379321'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
