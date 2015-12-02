cask :v1 => 'blender-daily' do
  version '2.76-a149a67'
  sha256 '34f155a4ce4fc8813852301a3faa11d94da08b5c6ea7222b19231eff1d2e651d'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
