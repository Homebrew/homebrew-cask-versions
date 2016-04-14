cask 'blender-daily' do
  version '2.77-4a64b36'
  sha256 'b930590f60c66861dde54d45da21cb673e020b7eda43b8e4d2eca920fe9c9170'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
