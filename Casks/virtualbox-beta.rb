cask 'virtualbox-beta' do
  version '5.2.0_RC1,118201'
  sha256 '893081d852e3376710c2b16e13c17623b290ca1a013e962e8b6d9fd2de8bc911'

  url "http://download.virtualbox.org/virtualbox/#{version.before_comma}/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST-BETA.TXT',
          checkpoint: '1f753c9849a06ca6ad4b2df06d022a2dc42bee734c87d98759f911be52eb537b'
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/wiki/Testbuilds'

  auto_updates true

  pkg 'VirtualBox.pkg'

  uninstall script:  {
                       executable: 'VirtualBox_Uninstall.tool',
                       args:       ['--unattended'],
                       sudo:       true,
                     },
            pkgutil: 'org.virtualbox.pkg.*'

  zap trash: [
               '/Library/Application Support/VirtualBox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualboxvm.sfl*',
               '~/Library/Preferences/org.virtualbox.app.VirtualBox.plist',
               '~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState',
               '~/Library/VirtualBox',
             ],
      rmdir: '~/VirtualBox VMs'

  caveats do
    kext
  end
end
