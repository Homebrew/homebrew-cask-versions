cask :v1 => 'blender-daily' do
  version '2.76-45cae17'
  sha256 'da81e0c400cb7a1ac865155bcc41e838e39e3c03ded68e6c453336da477decaa'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
