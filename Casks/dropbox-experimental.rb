class DropboxExperimental < Cask
  version '2.11.37'
  sha256 '259f288f5c117d261994f8041c993befe4206e9029eb79da8be3a564b045db49'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropbox.com/'
  license :unknown

  app 'Dropbox.app'
end
