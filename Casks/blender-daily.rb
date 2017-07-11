cask 'blender-daily' do
  version '2.78-8677c76f13'
  sha256 '3b1335aac49ea1afdfa8045253635a1716a20b8a254234e6cbe327b7082520b7'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
