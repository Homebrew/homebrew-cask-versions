class ParaviewLionPython27Nightly < Cask
  url 'http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=nightly&type=binary&os=osx&downloadFile=ParaView-Darwin-64bit-Lion-Python27-NIGHTLY.dmg'
  homepage 'http://www.paraview.org/'
  version 'latest'
  no_checksum
  link 'paraview.app'

  def caveats; <<-EOS.undent
    This version of ParaView is for OS X Lion (10.7) or Mountain Lion (10.8)
    and should be installed if the system Python version is 2.6. If your
    OS version is Lion (10.7) or later, and your system Python version is
    2.7 or later, you may install this cask or the paraview-nightly cask.
    EOS
  end
end
