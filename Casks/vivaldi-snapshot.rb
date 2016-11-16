cask 'vivaldi-snapshot' do
  version '1.5.658.21'
  sha256 '29437cfd18053763691458f257911a05e0d691ca7ad76fcbd0c56baca006bb5f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'd4602d077825ca99524411e3c70b9f735ffd50320b9c03e6e69790463f0685c2'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
