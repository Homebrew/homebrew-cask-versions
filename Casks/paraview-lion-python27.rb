class ParaviewLionPython27 < Cask
  url 'http://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v4.1&type=binary&os=osx&downloadFile=ParaView-4.1.0-Darwin-64bit-Lion-Python27.dmg'
  homepage 'http://www.paraview.org/'
  version '4.1.0'
  sha1 '6da244c25bd500e44f1f020a0e44f5a239708a40'
  link 'paraview.app'

  def caveats; <<-EOS.undent
    This version of ParaView is for OS X Lion (10.7) or Mountain Lion (10.8)
    and should be installed if the system Python version is 2.6. If your
    OS version is Lion (10.7) or later, and your system Python version is
    2.7 or later, you may install this cask or the standard paraview cask.
    EOS
  end
end
