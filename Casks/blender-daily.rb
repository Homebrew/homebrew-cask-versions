cask 'blender-daily' do
  version '2.78-717d85fb1ca'
  sha256 '5b484ed6becab352dabc681ca451b35d179e5620521916bf5c27b0b6c2bb36a8'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
