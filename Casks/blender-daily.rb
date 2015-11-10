cask :v1 => 'blender-daily' do
  version '2.76-99df433'
  sha256 'ccc6bff7255d56e77bce1ed49a3b1dff73cf403f3ab43fc55c58707874ccbb2b'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
