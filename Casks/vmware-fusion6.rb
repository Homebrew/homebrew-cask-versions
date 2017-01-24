cask 'vmware-fusion6' do
  version '6.0.6-2684343'
  sha256 'c14597fdb4e7e5ceb4d60fb70b0983b95213d8a28c03c2632b1fe8e266fd2c0c'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}-light.dmg"
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion.html'

  app 'VMware Fusion.app'
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmrun"

  uninstall_preflight do
    set_ownership "#{appdir}/VMware Fusion.app"
  end
end
