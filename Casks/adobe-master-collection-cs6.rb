cask :v1 => 'adobe-master-collection-cs6' do
  version :latest
  sha256 :no_check

  # This Cask only works for Adobe dmgs containing the deploy folder,
  # i.e. the Adobe Collections, not the single Product Installers!

  # For correct download URL see links provided at
  # https://helpx.adobe.com/x-productkb/policy-pricing/cs6-product-downloads.html

  url 'http://trials2.adobe.com/AdobeProducts/STAM/CS6/osx10/MasterCollection_CS6_LS16.dmg',
    :user_agent => :fake,
    :cookies => { 'MM_TRIALS' => '1234' }
  name 'Adobe CS6 Master Collection' # name must exactly match directory in dmg!
  homepage 'http://www.adobe.com/mena_en/products/creativesuite.html'
  license :commercial

  # staged_path not available in Installer/Uninstall Stanza, workaround by nesting with preflight/postflight
  # see https://github.com/caskroom/homebrew-cask/pull/8887
  # and https://github.com/caskroom/homebrew-versions/pull/296

  preflight do
    system '/usr/bin/killall', '-kill', 'SafariNotificationAgent'
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe CS6 Master Collection/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe CS6 Master Collection/deploy/install-en_US.xml"
  end

  uninstall_preflight do
    system '/usr/bin/killall', '-kill', 'SafariNotificationAgent'
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe CS6 Master Collection/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe CS6 Master Collection/deploy/uninstall-en_US.xml"
  end

  caveats 'Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services (e.g. Flashlight) are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identifify the conflicting processes.'
end
