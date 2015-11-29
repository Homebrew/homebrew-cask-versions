cask :v1 => 'blender-daily' do
  version '2.76-96cff85'
  sha256 '845079165d0226423d010b731101f910187facbf9622166eb813bbd9c093cfd6'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
