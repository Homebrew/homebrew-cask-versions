cask :v1 => 'blender-daily' do
  version '2.75-4f61de6'
  sha256 '15d91c6278a98df0a06f8614f29e3cafcb48321e25c030aafc27022d74e3c7bd'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
