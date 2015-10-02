cask :v1 => 'blender-daily' do
  version '2.76-550527b'
  sha256 'b59b7e34902bf3a3e4ed01955bbfcd32a1cd3b2061b784b68684f78529a6b6a0'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
