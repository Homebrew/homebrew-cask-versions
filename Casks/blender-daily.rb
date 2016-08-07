cask 'blender-daily' do
  version '2.77-734e0ac'
  sha256 '8dd0756ab1eb90cd856fdbcee2cdda676eacdbb8cb1174df9a95d94765da96d9'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
