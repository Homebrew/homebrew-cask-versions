cask :v1 => 'blender-daily' do
  version '2.76-1cae9c4'
  sha256 '677644ba962cd0994ea2586bdd8a89038579a60cc379ed0a2b93ac09dd6024e4'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
