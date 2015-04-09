cask :v1 => 'cleanmymac2' do
  version '2.3.5'
  sha256 '16e192edcf58f25c6763349ef0e5194268bec4d000912b64b34f5897b4784097'

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.macpaw.CleanMyMac2/2.3.5/1427986644/CleanMyMac2-2.3.5.zip'
  appcast 'http://updates.devmate.com/com.macpaw.CleanMyMac2.xml'
  app 'CleanMyMac 2.app'

  uninstall :launchctl => 'com.macpaw.CleanMyMac2.Agent'

  zap :delete => [
    '/Library/LaunchDaemons/com.macpaw.CleanMyMac2.Agent.plist',
    '/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac2.Agent',
    '/Users/Shared/CleanMyMac 2',
    '/private/var/run/com.macpaw.CleanMyMac2.Agent.socket',
    '~/Library/Application Support/CleanMyMac 2',
    '~/Library/Caches/CleanMyMac 2',
    '~/Library/Logs/CleanMyMac 2.log',
    '~/Library/Preferences/com.macpaw.CleanMyMac-2-Helper.plist',
    '~/Library/Preferences/com.macpaw.CleanMyMac2.KnowledgeBase.plist',
    '~/Library/Preferences/com.macpaw.CleanMyMac2.plist',
  ]

  name 'CleanMyMac'
  homepage 'https://macpaw.com/cleanmymac'
  license :commercial
end
