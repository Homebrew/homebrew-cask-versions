cask 'blender-daily' do
  version '2.78-18e1c8d9fa6'
  sha256 'f3199d165f66c249d28283aff14eb39163125eefd6a224b46258b554fcd228c2'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
