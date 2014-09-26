class DropboxExperimental < Cask
  version '2.11.13'
  sha256 '2d36acd4a53657eca20538587c72df97685de39a9b0226f18797d464a7d84bdf'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropbox.com/'

  app 'Dropbox.app'
end
