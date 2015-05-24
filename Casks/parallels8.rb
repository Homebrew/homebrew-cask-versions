cask :v1 => 'parallels8' do
  version '8.0.18619.1001606'
  sha256 '5b87b2c240e71176cad5097ed7f1928598c9e001da4ad1d8a4516708908c4305'

  url "http://download.parallels.com/desktop/v8/update3.hotfix1/ParallelsDesktop-#{version}.dmg"
  homepage 'http://kb.parallels.com/en/114623'
  license :closed

  pkg 'Install.mpkg'
end
