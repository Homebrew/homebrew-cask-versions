cask 'blender-daily' do
  version '2.79-b07dcb8fb06'
  sha256 '5eeed78c3f25ae2c1b287c1e8c63656f983315ebe852a5f502456eeb3ec3ca74'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
