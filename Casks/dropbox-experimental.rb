cask :v1 => 'dropbox-experimental' do
  version '3.4.1'
  sha256 '089a2b9ce3c17c9ffba125403bd870dc3fea8bb12a32d76f8c36e26749bf0481'

  url "https://dl.dropboxusercontent.com/u/17/Dropbox%20#{version}.dmg"
  homepage 'https://www.dropboxforum.com/hc/communities/public/questions/202184749-Release-Candidate-3-4-1'
  license :gratis

  app 'Dropbox.app'
end
