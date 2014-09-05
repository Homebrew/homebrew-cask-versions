class Parallels8 < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.parallels.com/directdownload/pd8'
  homepage 'http://www.parallels.com/products/desktop/'

  install 'Install.mpkg'
end
