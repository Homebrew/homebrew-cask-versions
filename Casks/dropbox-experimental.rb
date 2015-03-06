cask :v1 => 'dropbox-experimental' do
  version '3.3.36'
  sha256 '212115ae1b02f35a669f7a61b1d5420ccef44269cd7639e78df7d734c30c8ea5'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202580635-Experimental-Build-3-3-36'
  license :gratis

  app 'Dropbox.app'
end
