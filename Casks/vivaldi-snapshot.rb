cask 'vivaldi-snapshot' do
  version '1.7.735.29'
  sha256 'c9b9a88607f714a65f1a6ceb8807505f14a1997e92c89fdacce387b85f196c5a'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '59a623664db54bd62eacf866752be25bcf832bd829f2fc2e05b8dba25ee46c52'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
