class Tower1 < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.git-tower.com/download-v1'
  appcast 'https://macapps.fournova.com/tower1-1060/updates.xml'
  homepage 'http://www.git-tower.com/'

  link 'Tower.app'
end
