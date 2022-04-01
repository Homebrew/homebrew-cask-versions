cask "vmware-fusion-tech-preview" do
  arch = Hardware::CPU.intel? ? "" : "_arm64"

  if Hardware::CPU.intel?
    version "16530630"
    sha256 "663b3d35f23541003f34ee0f5160bd04d0113703ac0a34a509b964b21a5bd5d0"

    livecheck do
      url "http://www.vmware.com/go/get-fusion-tp"
      strategy :header_match
    end
  else
    version "19431034"
    sha256 "c61c610fef9fe3c2f9fb9072228432271d7474dad6e954f9df1811da0f3f12dc"

    livecheck do
      skip "No version information available"
    end
  end

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-e.x.p-#{version}#{arch}.dmg"
  name "VMware Fusion Tech Preview"
  desc "Create, manage, and run virtual machines"
  homepage "https://blogs.vmware.com/teamfusion/tech-preview"

  auto_updates true
  conflicts_with cask: "vmware-fusion"
  depends_on macos: ">= :catalina"

  app "VMware Fusion Tech Preview.app"
  if Hardware::CPU.intel?
    binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vkd/bin/vctl"
    binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/vmrest"
    binary "#{appdir}/VMware Fusion Tech Preview.app/Contents/Library/VMware OVF Tool/ovftool"
  end
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
    "~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist",
    "~/Library/Preferences/com.vmware.fusion.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusion.plist",
    "~/Library/Preferences/com.vmware.fusionApplicationsMenu.helper.plist",
    "~/Library/Preferences/com.vmware.fusionApplicationsMenu.plist",
    "~/Library/Preferences/com.vmware.fusionDaemon.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusionDaemon.plist",
    "~/Library/Preferences/com.vmware.fusionStartMenu.plist.lockfile",
    "~/Library/Preferences/com.vmware.fusionStartMenu.plist",
    "~/Library/Preferences/VMware Fusion",
    "~/Library/Saved Application State/com.vmware.fusion.savedState",
    "~/Library/WebKit/com.vmware.fusion",
  ]

  caveats do
    kext if MacOS.version == :catalina
  end
end
