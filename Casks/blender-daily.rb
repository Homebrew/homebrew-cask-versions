cask :v1 => 'blender-daily' do
  version '2.76-a3530b3'
  sha256 '7e29f4f122669fc0a13bac91c06847f23149872ebd9f28a0711c7b4b4ba74bf9'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
