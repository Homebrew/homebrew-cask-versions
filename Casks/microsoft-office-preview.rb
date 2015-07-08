cask :v1 => 'microsoft-office-preview' do
  version :latest
  sha256 :no_check

  url 'http://officecdn.microsoft.com/pr/OfficeMac/OfficePreview.pkg'
  name 'Microsoft Office 2016 Preview'
  homepage 'https://products.office.com/en-us/mac/mac-preview'
  license :commercial

  pkg 'OfficePreview.pkg'

  uninstall :pkgutil => [
                         'com.microsoft.package.Fonts',
                         'com.microsoft.package.Frameworks',
                         'com.microsoft.package.Microsoft_AutoUpdate.app',
                         'com.microsoft.package.Microsoft_Excel.app',
                         'com.microsoft.package.Microsoft_OneNote.app',
                         'com.microsoft.package.Microsoft_Outlook.app',
                         'com.microsoft.package.Microsoft_PowerPoint.app',
                         'com.microsoft.package.Microsoft_Word.app',
                         'com.microsoft.package.Proofing_Tools',
                         'com.microsoft.pkg.licensing'
                        ],
             :delete => [
                         '/Applications/Microsoft Excel.app',
                         '/Applications/Microsoft OneNote.app',
                         '/Applications/Microsoft Outlook.app',
                         '/Applications/Microsoft PowerPoint.app',
                         '/Applications/Microsoft Word.app',
                        ]
end
