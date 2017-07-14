cask 'blender-daily' do
  version '2.78-c9817c67fc'
  sha256 '19504955480fec809df00c48059a5a9e34ddbcbea5bc7ac60093c42241d1f438'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  appcast 'https://builder.blender.org/download/',
           checkpoint: 'e75c74e0dd96ccca74b3b6893754aaabcbee38ca5c679009c43ff65034103b4e'
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
