cask 'blender-daily' do
  version '2.76-5f0cf67'
  sha256 '36bafcd538cbe3ba3fa77f88020f7fe6123a1e45fcc229cd31d646e3137f01eb'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
