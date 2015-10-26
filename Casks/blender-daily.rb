cask :v1 => 'blender-daily' do
  version '2.76-c3cec82'
  sha256 '0a595740dbf0d304c7c7909e89732971db7dee45566706e58757de89f36521f1'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
