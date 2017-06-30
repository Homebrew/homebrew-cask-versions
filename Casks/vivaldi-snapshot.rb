cask 'vivaldi-snapshot' do
  version '1.11.890.4'
  sha256 'e93772e0b5122681663c2b9ac87f63bb7e483a9b5ad2356cf8fb41727da9bf4f'

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '447b01086d75e284be60ae8383eae624ddf082d3c95b3ee9a6bf24cc932d96b7'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  app 'Vivaldi.app'
end
