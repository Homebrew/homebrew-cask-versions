cask 'weka-dev' do
  version '3.9.0'
  sha256 'cfa2151304f58367b1fffa7dfde947d2351dcff4c5d7d2aebec1d8f0bb726520'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-oracle-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss',
          checkpoint: 'e2a5edf3ca7fdbae537211958eed3803e8d5a70a5e24de53d8b89038055d6f61'
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'
  license :gpl

  app "weka-#{version.dots_to_hyphens}-oracle-jvm.app"
end
