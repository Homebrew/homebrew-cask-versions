cask 'vivaldi-snapshot' do
  version '2.0.1309.17'
  sha256 '50607df540e4791bfe48e765ab040a10754af9834f24f39406c3243077b9bda0'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'
end
