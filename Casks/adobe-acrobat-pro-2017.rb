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
                         'com.adobe.Acrobat.RemoverTool',
                         'com.adobe.ARMDC.Communicator',
                         'com.adobe.ARMDC.SMJobBlessHelper',
                         'com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d',
                       ],
            delete:    '/Applications/Adobe Acrobat 2017/'
end
