cask :v1 => 'blender-daily' do
  version '2.75-80f344f'
  sha256 '5815d43f9c6f22f90a7a78eed3076e93a9ea0dfa377251ec28ed85f127f03a55'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
