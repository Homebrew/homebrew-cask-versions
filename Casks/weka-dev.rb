cask 'weka-dev' do
  version '3.9.1'
  sha256 'eecbe8dd3ea1b2a10195077f19c0667c465cd37a8ae135c9e7f2748c0966060c'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-oracle-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss',
          checkpoint: '39aecb6a42219cfc46e42fb5c6518c4a3defdf1c3c285e2c9672589ca2f16e34'
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-oracle-jvm.app"
end
