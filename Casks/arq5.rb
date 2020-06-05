cask 'arq5' do
  version '5.19.0'
  sha256 '8c26440197b550777e61f3f483f1060364451b1338a45cbd37ddd53e2aefdc3b'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version.major}.#{version.minor}.zip"
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true
  conflicts_with cask: 'arq'

  app 'Arq.app'
end
