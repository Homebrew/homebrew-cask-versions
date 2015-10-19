cask :v1 => 'microsoft-office-de' do
  version :latest
  sha256 :no_check

  url 'http://officecdn.microsoft.com/pr/MacOffice2011/de-DE/MicrosoftOffice2011.dmg'
  name 'Microsoft Office German'
  homepage 'http://www.microsoft.com/mac'
  license :commercial

  pkg 'Office Installer.pkg'

  uninstall :pkgutil   => 'com.microsoft.office.*',
            :launchctl => 'com.microsoft.office.licensing.helper'
  zap       :pkgutil   => [
                           'com.microsoft.mau.all.autoupdate.*',
                           'com.microsoft.merp.all.errorreporting.*'
                          ],
            :delete    => [
                           '/Library/LaunchDaemons/com.microsoft.office.licensing.helper.plist',
                           '/Library/PrivilegedHelperTools/com.microsoft.office.licensing.helper',
                           '/Library/Application Support/Microsoft/MAU2.0',
                           '/Library/Application Support/Microsoft/MERP2.0',
                           '/Library/Preferences/com.microsoft.Excel.plist',
                           '/Library/Preferences/com.microsoft.Outlook.plist',
                           '/Library/Preferences/com.microsoft.PlayReady.plist',
                           '/Library/Preferences/com.microsoft.Powerpoint.plist',
                           '/Library/Preferences/com.microsoft.Word.plist',
                           '/Library/Preferences/com.microsoft.office.licensing.plist',
                           '/Library/Preferences/com.microsoft.outlook.databasedaemon.plist',
                           '/Library/Preferences/com.microsoft.outlook.officereminders.plist',
                           '~/Library/Application Support/Microsoft/Office',
                           '~/Library/Preferences/com.microsoft.Excel.plist',
                           '~/Library/Preferences/com.microsoft.Outlook.plist',
                           '~/Library/Preferences/com.microsoft.Powerpoint.plist',
                           '~/Library/Preferences/com.microsoft.Word.plist',
                           '~/Library/Preferences/com.microsoft.autoupdate2.plist',
                           '~/Library/Preferences/com.microsoft.error_reporting.plist',
                           '~/Library/Preferences/com.microsoft.office.plist',
                           '~/Library/Preferences/com.microsoft.office.setupassistant.plist',
                           '~/Library/Preferences/com.microsoft.outlook.databasedaemon.plist',
                           '~/Library/Preferences/com.microsoft.outlook.office_reminders.plist',
                           '~/Library/Preferences/com.microsoft.outlook.officereminders.plist',
                           '~/Documents/Microsoft-Benutzerdaten/Microsoft',
                           '~/Documents/Microsoft-Benutzerdaten/Office 2011 Identities',
                           '~/Documents/Microsoft-Benutzerdaten/Outlook Sound Sets',
                           '~/Documents/Microsoft-Benutzerdaten/Saved Attachments'
                          ],
            :rmdir     => [
                           '/Library/Application Support/Microsoft',
                           '~/Library/Application Support/Microsoft',
                           '~/Documents/Microsoft-Benutzerdaten'
                          ]
end
