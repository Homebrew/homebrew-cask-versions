cask :v1 => 'blender-daily' do
  version '2.75-3e63c60'
  sha256 '7caca96f87abdd911d08f79e4742e2c15313393435bf6aa696c519c9ff1e0237'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
