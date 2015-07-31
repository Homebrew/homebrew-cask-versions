cask :v1 => 'dropbox-experimental' do
  version '3.9.32'
  sha256 '7eee2a2faee0a57fe1ef0bd212101d08f41c63f9c53d31c5aef0dece549a2672'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/204562695-Experimental-Build-3-9-32'
  license :gratis

  app 'Dropbox.app'
end
