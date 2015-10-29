cask :v1 => 'blender-daily' do
  version '2.76-40b2e75'
  sha256 'b1f87c54e40c92bcf167fb66592a8fc45145f30eb2cebe177e2dea645dba1441'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
