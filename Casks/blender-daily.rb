cask 'blender-daily' do
  version '2.78-29ec0b1162'
  sha256 'aada0a64ad757adeef762e06c62d729ccf2b9306b9728fb442f5372454d33c7a'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
