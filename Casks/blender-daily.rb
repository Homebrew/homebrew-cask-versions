cask 'blender-daily' do
  version '2.78-d508b69e44b'
  sha256 '5501f158c97850fbaf6d1fafdbbd6529c27c28b6dea174213a702ab3ad637ab2'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
