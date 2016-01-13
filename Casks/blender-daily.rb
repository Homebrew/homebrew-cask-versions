cask 'blender-daily' do
  version '2.76-1eb5e0b'
  sha256 '1040fb02f01ea371ff8145b393f9d60149c5e4978f00dd0c8e69193acd0abd27'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
