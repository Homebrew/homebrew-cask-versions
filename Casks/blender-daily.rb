cask :v1 => 'blender-daily' do
  version '2.76-632ed6a'
  sha256 'aa825e404edd0c1c16903189e05656b3e1a5e56578684bb1a8bda723800c544d'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
