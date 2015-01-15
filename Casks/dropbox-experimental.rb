cask :v1 => 'dropbox-experimental' do
  version '3.1.272'
  sha256 '682cdfd0579965710e89b79133b305fb2cb7a4d5e0abbacce70f28e48bbb70a5'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropbox.com/'
  license :unknown

  app 'Dropbox.app'
end
