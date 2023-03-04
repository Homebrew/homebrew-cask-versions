cask "vmware-fusion7" do
  version "7.1.3-3204469"
  sha256 "9ba3e002cc2ed3d3adc96b8b748d49c72069acac35f0fcc71ceaa7729895da17"

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  name "VMware Fusion"
  desc "Create, manage, and run virtual machines"
  homepage "https://www.vmware.com/products/fusion.html"

  conflicts_with cask: [
    "vmware-fusion",
    "vmware-fusion8",
    "vmware-fusion10",
    "vmware-fusion11",
    "vmware-fusion12",
    "vmware-fusion-tech-preview"
  ]

  app "VMware Fusion.app"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-cfgcli"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-cli"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmrun"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vdiskmanager"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/VMware OVF Tool/ovftool"

  uninstall_preflight do
    set_ownership "#{appdir}/VMware Fusion.app"
  end

  zap trash: [
    # NOTE: '~/Library/Application Support/VMware Fusion' is not safe
    # to delete. In older versions, VM images were located there.
    "~/Library/Caches/com.vmware.fusion",
    "~/Library/Logs/VMware",
    "~/Library/Logs/VMware Fusion",
  ]

  caveats do
    discontinued
  end
end
