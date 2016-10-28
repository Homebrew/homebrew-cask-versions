cask 'blender-daily' do
  version '2.78-7e380ad'
  sha256 '305f0cbaa6cdfe6d914a2b2684bca08360aa082d3c38046d5625820178468d86'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
