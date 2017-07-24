cask 'blender-daily' do
  version '2.78-e982ebd6d4f'
  sha256 '2b084b08a33d51551a594425d2249d9213a385135b90b549af044b9ba39501ec'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
