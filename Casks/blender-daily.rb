cask :v1 => 'blender-daily' do
  version '2.76-41a2b97'
  sha256 'd2614bf6616dc0fec0b1bb5dd8358c2c3ceedb76c01b40f23b874714e042ee0e'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
