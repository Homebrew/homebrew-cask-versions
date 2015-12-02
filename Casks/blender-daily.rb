cask :v1 => 'blender-daily' do
  version '2.76-d9f5a4e'
  sha256 '6c6b421cdd7480677f07d11d2cf901a0d15ed038550548ff06033a93b887c653'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
