class VmwareFusion6 < Cask
  version '6.0.5-2209127'
  sha256 '0e96bd1d6d89a13f353e810b0e738ae9ddd732807ab01a6b8f3308b76c108fe8'

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
