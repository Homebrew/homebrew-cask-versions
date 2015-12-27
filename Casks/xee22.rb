cask 'xee22' do
  version '2.2'
  sha256 '9cc173b24cfa76185a48f050c587690917f104f6a165d52ffc67e52793385f1c'

  url "https://wakaba.c3.cx/releases/Xee/Xee#{version}.zip"
  homepage 'https://xee.c3.cx/'
  license :oss

  app 'Xee.app'
end
