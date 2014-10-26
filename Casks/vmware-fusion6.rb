class VmwareFusion6 < Cask
  version '6.0.5-2209127'
  sha256 '7036242845e1ebfeb0c3c430a45b2ebe519a33ec5cdc8955fa4ca03117946693'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}-light.dmg"
  homepage 'http://www.vmware.com/products/fusion/'
  license :closed

  binary 'VMware Fusion.app/Contents/Library/vmrun'
  app 'VMware Fusion.app'
  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{destination_path}/VMware Fusion.app"
  end
end
