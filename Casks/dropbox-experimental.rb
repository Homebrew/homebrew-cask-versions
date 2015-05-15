cask :v1 => 'dropbox-experimental' do
  version '3.6.0'
  sha256 '2060da646e917c23b257df6ae3a66ee7a6e1e9156e95ab135babcceabc43bbad'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202340449-Release-Candidate-3-6-0'
  license :gratis

  app 'Dropbox.app'
end
