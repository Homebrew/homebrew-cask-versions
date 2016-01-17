cask 'weka-dev' do
  version '3.7.13'
  sha256 'ca8b73d9978b9f9e8a280fef3fe9f1edfd16e2f0aff3b26ad4ace367310f79c9'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/weka/weka-#{version.gsub('.', '-')}-oracle-jvm.dmg"
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'
  license :gpl

  app "weka-#{version.gsub('.', '-')}-oracle-jvm.app"
end
