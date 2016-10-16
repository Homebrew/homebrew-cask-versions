cask 'blender-daily' do
  version '2.78-7fec7ee'
  sha256 '3ff655a8fa0b8d37377f59aaedffa4e502c43a5a35b58ffbe92e1ba0d99d86f1'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
