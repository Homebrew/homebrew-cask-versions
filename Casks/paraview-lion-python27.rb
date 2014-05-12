class ParaviewLionPython27 < Cask
  url 'http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v4.1&type=binary&os=osx&downloadFile=ParaView-4.1.0-Darwin-64bit-Lion-Python27.dmg'
  homepage 'http://www.paraview.org/'
  version '4.1.0'
  sha256 '8784481c90b58b0c6158e21b7f978a7d78caa67c63d28d6d5d770ef43f0ad890'
  link 'paraview.app'
  caveats <<-EOS.undent
    This version of ParaView is for OS X Lion (10.7) or Mountain Lion (10.8)
    and should be installed if the system Python version is 2.6. If your
    OS version is Lion (10.7) or later, and your system Python version is
    2.7 or later, you may install this cask or the standard paraview cask.
    EOS
end
