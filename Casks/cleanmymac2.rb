cask 'cleanmymac2' do
  version '2.3.5-1427986644'
  sha256 '16e192edcf58f25c6763349ef0e5194268bec4d000912b64b34f5897b4784097'

  # devmate.com is the official download host per the appcast feed
  url "https://dl.devmate.com/com.macpaw.CleanMyMac2/#{version.sub(%r{-.*$},'')}/#{version.sub(%r{.*?-},'')}/CleanMyMac#{version.to_i}-#{version.sub(%r{-.*$},'')}.zip"
  appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.to_i}.xml"
  name 'CleanMyMac'
  homepage 'https://macpaw.com/cleanmymac'
  license :commercial
  
  app "CleanMyMac #{version.to_i}.app"

  uninstall :launchctl => "com.macpaw.CleanMyMac#{version.to_i}.Agent"

  zap :delete => [
      "/Library/LaunchDaemons/com.macpaw.CleanMyMac#{version.to_i}.Agent.plist",
      "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.to_i}.Agent",
      "/Users/Shared/CleanMyMac #{version.to_i}",
      "/private/var/run/com.macpaw.CleanMyMac#{version.to_i}.Agent.socket",
      "~/Library/Application Support/CleanMyMac #{version.to_i}",
      "~/Library/Caches/CleanMyMac #{version.to_i}",
      "~/Library/Logs/CleanMyMac #{version.to_i}.log",
      "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.to_i}-Helper.plist",
      "~/Library/Preferences/com.macpaw.CleanMyMac#{version.to_i}.KnowledgeBase.plist",
      "~/Library/Preferences/com.macpaw.CleanMyMac#{version.to_i}.plist",
    ]
end
