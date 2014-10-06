class Mamp2 < Cask
  version '2.2'
  sha256 'd01d43a881e0c0fbaa06301364b3e25931dff5863dd987d91ccf856626572e76'

  url 'http://downloads2.mamp.info/MAMP-PRO/releases/2.2/MAMP_MAMP_PRO_2.2.zip'
  homepage 'http://www.mamp.info/'

  pkg 'MAMP_2.2.pkg'
  uninstall :delete => [
                         'Applications/MAMP'
                       ]
end
