cask 'blender-daily' do
  version '2.77-421ec97'
  sha256 'b8aa3b84896408124ba69512cbef1d5008890da8aad5c7890df599b30c6299bf'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
