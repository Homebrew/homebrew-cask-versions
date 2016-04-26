cask 'weka-dev' do
  version '3.9.0'
  sha256 'cfa2151304f58367b1fffa7dfde947d2351dcff4c5d7d2aebec1d8f0bb726520'

  # sourceforge.net/sourceforge/weka was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/weka/weka-#{version.gsub('.', '-')}-oracle-jvm.dmg"
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'
  license :gpl

  app "weka-#{version.gsub('.', '-')}-oracle-jvm.app"
end
