cask :v1 => 'blender-daily' do
  version '2.76-034cc85'
  sha256 '73483f1e4479189acbbc8fb0e64af7c4250348ce627c34cf57e6b07a0bed3701'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
