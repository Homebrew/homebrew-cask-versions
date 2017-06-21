cask 'blender-daily' do
  version '2.78-9e08019b74c'
  sha256 '8f1ac625ab231b7a4423954faf594fa491c69c59617a8791f3b7383b407076d5'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
