cask :v1 => 'adobe-photoshop-cs5' do
  version :latest
  sha256 :no_check

  # This Cask entirely based on @winkelsdorf's epic CS6 cask checkin:
  # https://github.com/caskroom/homebrew-versions/commit/d0255946a4d1bc1f553461f9e0143459964caf6d

  # For correct download URL see links provided at
  # https://helpx.adobe.com/creative-suite/kb/cs5-product-downloads.html

  url 'http://trials2.adobe.com/dlm/AdobeProducts/PHSP/12/osx10/Photoshop_12_LS1.dmg',
    :user_agent => :fake,
    :cookies => { 'MM_TRIALS' => '1234' }
  name 'Adobe Photoshop CS5' # name must exactly match directory in dmg!
  homepage 'http://www.adobe.com/mena_en/products/creativesuite.html'
  license :commercial

  # staged_path not available in Installer/Uninstall Stanza, workaround by nesting with preflight/postflight
  # see https://github.com/caskroom/homebrew-cask/pull/8887
  # and https://github.com/caskroom/homebrew-versions/pull/296

  preflight do
    system '/usr/bin/killall', '-kill', 'SafariNotificationAgent'
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Photoshop CS5/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe Photoshop CS5/Deployment/en_US_Deployment.xml"
  end

  # uninstall does not seem to work for cs5 as there isn't an uninstall
  # deployment file. launching the uninstall app will not work in silent mode.
  # keeping the code here and commented out in case there's a way.

  #uninstall_preflight do
  #  system '/usr/bin/killall', '-kill', 'SafariNotificationAgent'
  #  system '/usr/bin/sudo', '-E', '--', "/Library/Application Support/Adobe/Uninstall/{15FEDA5F-141C-4127-8D7E-B962D1742728}.app/Contents/MacOS/Uninstall Product", "--mode=silent", "--deploymentFile=#{staged_path}/Adobe CS6 Design Standard/deploy/uninstall-en_US.xml"
  #end

  caveats 'Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services (e.g. Flashlight) are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identifify the conflicting processes.'
end
