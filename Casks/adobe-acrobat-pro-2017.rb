cask 'adobe-acrobat-pro-2017' do
  version ':latest'
  sha256 'f041971fd2d5167b60d2c16532107e6537879fa86d297cf0a437038191dae775'

  url 'https://trials3.adobe.com/AdobeProducts/APRO/Acrobat_HelpX/osx10/Acrobat_2017_Web_WWMUI.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Acrobat Pro 2017'
  homepage 'https://helpx.adobe.com/uk/download-install/kb/acrobat-2017-downloads.html#AcrobatPro2017'

  auto_updates true

  pkg 'Acrobat 2017/Acrobat 2017 Installer.pkg'

  uninstall pkgutil:   [
                         'com.adobe.armdc.app.pkg',
                         'com.adobe.AcroServicesUpdater',
                         'com.adobe.acrobat.2017.*',
                       ],
            launchctl: [
                         'Adobe_Genuine_Software_Integrity_Service',
                         'com.adobe.agsservice',
                         'com.adobe.ARMDC.Communicator',
                         'com.adobe.ARMDC.SMJobBlessHelper',
                         'com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d',
                       ],
            delete:    '/Applications/Adobe Acrobat 2017/'

  zap trash: [

               '/Library/Application Support/Adobe/ARMDC',
               '/Library/Application Support/Adobe/ARMNext',
               '/Library/Application Support/Adobe/Acrobat',
               '/Library/Application Support/Adobe/Acrobat 2017 AMT',
               '/Library/Application Support/Adobe/Acrobat 2017 Helper Frameworks',
               '/Library/Application Support/Adobe/Adobe PCD',
               '/Library/Application Support/Adobe/Adobe PDF',
               '/Library/Application Support/Adobe/AdobeGCClient',
               '/Library/Application Support/Adobe/AdobeGCData',
               '/Library/Application Support/Adobe/Color',
               '/Library/Application Support/Adobe/HelpCfg',
               '/Library/Application Support/Adobe/MACPDFM',
               '/Library/Application Support/Adobe/PCF',
               '/Library/Application Support/Adobe/SLCache',
               '/Library/Application Support/Adobe/SLStore',
               '/Library/Application Support/Adobe/WebExtnUtils',
               '/Library/Application Support/regid.1986-12.com.adobe/regid.1986-12.com.adobe_V7{}AcrobatESR-17-Mac-GM-MUL.swidtag',
               '/Library/Preferences/com.adobe.PDFAdminSettings.plist',
               '/Library/Preferences/com.adobe.acrobat.2017.WebResource.plist',
               '/Library/Preferences/com.adobe.acrobat.pdfviewer.plist',
               '~/Library/Application Support/Adobe/AcroCef',
               '~/Library/Application Support/Adobe/DynamicSonar',
               '~/Library/Application Support/Adobe/OOBE',
               '~/Library/Application Support/Adobe/Sonar',
               '~/Library/Application Support/Adobe/Acrobat',
               '~/Library/Application Support/Adobe/LogTransport2CC',
               '~/Library/Application Support/Adobe/RTTransfer',
               '~/Library/Caches/Acrobat',
               '~/Library/Caches/Adobe/Color',
               '~/Library/Caches/com.adobe.AcroLicApp',
               '~/Library/Caches/com.adobe.Acrobat.Pro',
               '~/Library/Preferences/com.Adobe.Common LR5.plist',
               '~/Library/Preferences/com.Adobe.dynamiclinkmediaserver.7.0.plist',
               '~/Library/Preferences/com.adobe.AcroLicApp.plist',
               '~/Library/Preferences/com.adobe.Acrobat.Pro.plist',
               '~/Library/Preferences/com.adobe.AdobeAcroCEFHelper.plist',
               '~/Library/Preferences/com.adobe.crashreporter.plist',
             ]
end
