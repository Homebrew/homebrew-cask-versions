cask 'blender-daily' do
  version '2.77-f2fa737'
  sha256 'bd1e5eba0a8c36f514a2452fc708ee824869518b9cebabdff841a4c88f2b1b31'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
