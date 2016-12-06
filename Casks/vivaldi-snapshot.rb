cask 'vivaldi-snapshot' do
  version '1.6.687.3'
  sha256 'eaf3062b7d81772c3a31997668bc389e4b30f597184932b1aa2d7e42e67098d0'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '5278864f62787f355d1407e73668c968977eb556c201ce541cafe33bb57e6a8b'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
