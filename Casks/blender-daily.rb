cask :v1 => 'blender-daily' do
  version '2.76-3e499c1'
  sha256 'b1d12aca9f66ff2f1f418e7312f0869d8c040ca45bb8a2f4728b317befcdeabe'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
