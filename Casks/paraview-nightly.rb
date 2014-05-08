class ParaviewNightly < Cask
  url 'http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=nightly&type=binary&os=osx&downloadFile=ParaView-Darwin-64bit-NIGHTLY.dmg'
  homepage 'http://www.paraview.org/'
  version 'latest'
  sha256 :no_check
  link 'paraview.app'
    caveats <<-EOS.undent
    This version of Paraview should be installed if your system Python
    version is 2.7. If you are running OS X Lion (10.7) or Mountain
    Lion (10.8) and your system Python version is 2.6, please instead
    install paraview-nightly-lion-python27.
   EOS
end
