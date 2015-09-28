cask :v1 => 'microsoft-office-2016' do
  version :latest
  sha256 :no_check

  url 'http://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Office_2016_Installer.pkg'
  name 'Microsoft Office 2016'
  homepage 'https://www.microsoft.com/mac'
  license :commercial

  pkg 'Microsoft_Office_2016_Installer.pkg'

  # Instructions per
  # http://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Office_2016_Installer.pkg
  uninstall :launchctl => [
                          'com.microsoft.autoupdate.helpertool',
                          'com.microsoft.office.licensingV2.helper'
                          ],
            :pkgutil   => [
                          'com.microsoft.package.Microsoft_Word.app',
                          'com.microsoft.package.Microsoft_Excel.app',
                          'com.microsoft.package.Microsoft_PowerPoint.app',
                          'com.microsoft.package.Microsoft_OneNote.app',
                          'com.microsoft.package.Microsoft_Outlook.app',
                          'com.microsoft.package.Microsoft_AutoUpdate.app',
                          'com.microsoft.pkg.licensing',
                          'com.microsoft.package.Fonts',
                          'com.microsoft.package.Frameworks',
                          'com.microsoft.package.Proofing_Tools'
                          ]
  zap       :delete    => [
                          '/Library/LaunchDaemons/com.microsoft.autoupdate.helpertool.plist',
                          '/Library/LaunchDaemons/com.microsoft.office.licensingV2.helper.plist',
                          '/Library/PrivilegedHelperTools/com.microsoft.autoupdate.helpertool',
                          '/Library/PrivilegedHelperTools/com.microsoft.office.licensingV2.helper'
                          ],
            :rmdir     => [
                          '~/Library/Containers/com.microsoft.errorreporting',
                          '~/Library/Containers/com.microsoft.Excel',
                          '~/Library/Containers/com.microsoft.netlib.shipassertprocess',
                          '~/Library/Containers/com.microsoft.Office365ServiceV2',
                          '~/Library/Containers/com.microsoft.Outlook',
                          '~/Library/Containers/com.microsoft.Powerpoint',
                          '~/Library/Containers/com.microsoft.RMS-XPCService',
                          '~/Library/Containers/com.microsoft.Word',
                          '~/Library/Containers/com.microsoft.onenote.mac',
                          '~/Library/Group Containers/UBF8T346G9.ms',
                          '~/Library/Group Containers/UBF8T346G9.Office',
                          '~/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost'
                          ]
end
