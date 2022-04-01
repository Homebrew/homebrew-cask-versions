cask "dropbox-beta" do
  arch = Hardware::CPU.intel? ? "" : "&arch=arm64"

  version "146.3.4795"

  if Hardware::CPU.intel?
    sha256 "b58069fbdae7ff51fd4aa1afdf347a537a990a0afaf09790a911604fc363a39f"
  else
    sha256 "206049f40879b7f2ada5aa098ca74d5b59363b91173118c3a6a4527b1c3de584"
  end

  url "https://www.dropbox.com/download?build=#{version}&plat=mac&type=full#{arch}",
      verified: "dropbox.com/"
  name "Dropbox"
  desc "Client for the Dropbox cloud storage service"
  homepage "https://www.dropboxforum.com/t5/Desktop-client-builds/bd-p/101003016"

  livecheck do
    url :homepage
    regex(/Beta\sBuild\s(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  conflicts_with cask: "dropbox"

  app "Dropbox.app"

  uninstall launchctl: "com.dropbox.DropboxMacUpdate.agent",
            kext:      "com.getdropbox.dropbox.kext",
            delete:    [
              "/Library/DropboxHelperTools",
              "/Library/Preferences/com.getdropbox.dropbox.dbkextd.plist",
            ]

  zap trash: [
    "~/.dropbox",
    "~/Library/Application Scripts/com.dropbox.foldertagger",
    "~/Library/Application Scripts/com.getdropbox.dropbox.garcon",
    "~/Library/Application Support/Dropbox",
    "~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox",
    "~/Library/Caches/com.dropbox.DropboxMacUpdate",
    "~/Library/Caches/com.getdropbox.dropbox",
    "~/Library/Caches/com.getdropbox.DropboxMetaInstaller",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.dropbox.DropboxMacUpdate",
    "~/Library/Containers/com.dropbox.activityprovider",
    "~/Library/Containers/com.dropbox.foldertagger",
    "~/Library/Containers/com.getdropbox.dropbox.garcon",
    "~/Library/Dropbox",
    "~/Library/Group Containers/com.dropbox.client.crashpad",
    "~/Library/Group Containers/com.getdropbox.dropbox.garcon",
    "~/Library/LaunchAgents/com.dropbox.DropboxMacUpdate.agent.plist",
    "~/Library/Logs/Dropbox_debug.log",
    "~/Library/Preferences/com.dropbox.DropboxMacUpdate.plist",
    "~/Library/Preferences/com.dropbox.DropboxMonitor.plist",
    "~/Library/Preferences/com.dropbox.tungsten.helper.plist",
    "~/Library/Preferences/com.getdropbox.dropbox.plist",
  ]
end
