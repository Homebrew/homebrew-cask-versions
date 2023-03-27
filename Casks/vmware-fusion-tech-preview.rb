cask "vmware-fusion-tech-preview" do
  version "20486664"
  sha256 "8c74005d88edb0e37d2ac3517f4e72ce85613abb2dfaaea78fe3db8d2c7b17fd"

  on_intel do
    binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vkd/bin/vctl"
    binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmrest"
    binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/VMware OVF Tool/ovftool"
  end
  on_catalina do
    caveats do
      kext
    end
  end

  url "https://download3.vmware.com/software/FUS-PUBTP-22H2/VMware-Fusion-e.x.p-#{version}_universal.dmg"
  name "VMware Fusion Tech Preview"
  desc "Create, manage, and run virtual machines"
  homepage "https://blogs.vmware.com/teamfusion/tech-preview"

  livecheck do
    url "https://customerconnect.vmware.com/channel/public/api/v1.0/dlg/beta/header?locale=en_US&downloadGroup=FUS-PUBTP-22H2"
    strategy :page_match do |page|
      JSON.parse(page)["buildNumber"]
    end
  end

  auto_updates true
  conflicts_with cask: %w[
    vmware-fusion
    vmware-fusion7
    vmware-fusion8
    vmware-fusion10
    vmware-fusion11
    vmware-fusion12
  ]
  depends_on macos: ">= :catalina"

  app "VMware Fusion Tech Preview.app"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmnet-bridge"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmnet-cfgcli"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmnet-cli"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmnet-dhcpd"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmnet-natd"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmnet-netifup"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmnet-sniffer"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmrun"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmss2core"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-aewp"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-authd"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-cloneBootCamp"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-id"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-ntfs"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-rawdiskAuthTool"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-rawdiskCreator"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-remotemks"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-usbarbitrator"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-vdiskmanager"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-vmdkserver"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-vmx"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-vmx-debug"
  binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmware-vmx-stats"

  postflight do
    system_command "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/Initialize VMware Fusion.tool",
                   args: ["set"],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership "#{appdir}/VMware Fusion Tech Preview.app"
  end

  uninstall delete: [
    "/etc/paths.d/com.vmware.fusion.public",
    "/Library/Application Support/VMware",
    "/Library/Logs/VMware Fusion Services.log",
    "/Library/Logs/VMware USB Arbitrator Service.log",
    "/Library/Logs/VMware",
    "/Library/Preferences/VMware Fusion",
  ]

  zap trash: [
    "~/.nautilus",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vmware.fusion.sfl*",
    "~/Library/Application Support/VMware Fusion Applications Menu",
    "~/Library/Application Support/VMware Fusion",
    "~/Library/Caches/com.vmware.fusion",
    "~/Library/Logs/VMware Fusion Applications Menu",
    "~/Library/Logs/VMware Fusion",
    "~/Library/Logs/VMware Graphics Service.log",
    "~/Library/Logs/VMware",
    "~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist",
    "~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusion.plist",
    "~/Library/Preferences/com.vmware.fusion.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusionApplicationsMenu.helper.plist",
    "~/Library/Preferences/com.vmware.fusionApplicationsMenu.plist",
    "~/Library/Preferences/com.vmware.fusionDaemon.plist",
    "~/Library/Preferences/com.vmware.fusionDaemon.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusionStartMenu.plist",
    "~/Library/Preferences/com.vmware.fusionStartMenu.plist.lockfile",
    "~/Library/Preferences/VMware Fusion",
    "~/Library/Saved Application State/com.vmware.fusion.savedState",
    "~/Library/WebKit/com.vmware.fusion",
  ]
end
