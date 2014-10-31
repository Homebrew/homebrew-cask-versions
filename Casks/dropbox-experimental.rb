class DropboxExperimental < Cask
  version '2.11.31'
  sha256 '70d2f24b776c330678573b5a04362c066ac3ab6e17d05ca34c21e8bccb5da898'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropbox.com/'
  license :unknown

  app 'Dropbox.app'
end
