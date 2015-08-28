cask :v1 => 'vmware-fusion6' do
  version '6.0.5-2209127'
  sha256 '7036242845e1ebfeb0c3c430a45b2ebe519a33ec5cdc8955fa4ca03117946693'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}-light.dmg"
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion/'
  license :commercial
  tags :vendor => 'VMware'

  binary 'VMware Fusion.app/Contents/Library/vmrun'
  app 'VMware Fusion.app'
  
  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{staged_path}/VMware Fusion.app"
  end
end
