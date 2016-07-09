cask 'blender-daily' do
  version '2.77-1b45c52'
  sha256 '39ba44faaf2fa8d58aafa7d4c2ef9a00f36e6479e684f18b873c45c2ba1e8892'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
