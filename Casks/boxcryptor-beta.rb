cask 'boxcryptor-beta' do
  version '2.3.201.730'
  sha256 '0caf99cbe2b8b64d4d78501a664e91ae27757bc094f185f62dec2d6b120139a9'

  url "https://downloads.boxcryptor.com/Boxcryptor_v#{version}_Installer.dmg"
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :yosemite'

  app 'Boxcryptor.app'
end
