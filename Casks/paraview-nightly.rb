class ParaviewNightly < Cask
  url 'http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=nightly&type=binary&os=osx&downloadFile=ParaView-Darwin-64bit-NIGHTLY.dmg'
  homepage 'http://www.paraview.org/'
  version 'latest'
  no_checksum
  link 'paraview.app'
end
