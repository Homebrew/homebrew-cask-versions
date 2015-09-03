cask :v1 => 'reeder-beta' do
  version '3.0b3'
  sha256 '237cae56628cce09c532e480788cfe99cfcd759fb5d8c99c6e043231e15687c9'

  url "http://reederapp.com/beta3/Reeder_#{version}.zip"
  name 'Reeder Beta'
  homepage 'http://reederapp.com/beta3/'
  license :commercial

  app 'Reeder.app'
end
