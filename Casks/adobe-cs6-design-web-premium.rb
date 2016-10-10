cask 'adobe-cs6-design-web-premium' do
  version 'CS6'
  sha256 '117cf706d383eef3e75c6678fbe042a8e7f7abec6a64537126f938689dad826e'

  # This Cask only works for Adobe dmgs containing the deploy folder,
  # i.e. the Adobe Collections, not the single Product Installers!

  # For correct download URL see links provided at
  # https://helpx.adobe.com/x-productkb/policy-pricing/cs6-product-downloads.html

  url "http://trials2.adobe.com/AdobeProducts/DSST/#{version}/osx10/DesignWebPremium_#{version}_LS4.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe CS6 Design and Web Premium' # name must exactly match directory in dmg!
  homepage 'https://www.adobe.com/mena_en/products/creativesuite.html'

  # staged_path not available in Installer/Uninstall Stanza, workaround by nesting with preflight/postflight
  # see https://github.com/caskroom/homebrew-cask/pull/8887
  # and https://github.com/caskroom/homebrew-versions/pull/296

  preflight do
    language = case MacOS.language
               when %r{^de} then 'de_DE'
               when 'en-GB' then 'en_GB'
               when %r{^es} then 'es_ES'
               when %r{^fr} then 'fr_FR'
               when %r{^it} then 'it_IT'
               when %r{^ja} then 'ja_JP'
               when %r{^nl} then 'nl_NL'
               else
                 'en_US'
               end

    system '/usr/bin/killall', '-kill', 'SafariNotificationAgent'
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe CS6 Design and Web Premium/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/Adobe CS6 Design and Web Premium/deploy/install-#{language}.xml"

    FileUtils.cp "#{staged_path}/Adobe CS6 Design and Web Premium/deploy/uninstall-#{language}.xml" "#{staged_path}/uninstall.xml"
  end

  uninstall_preflight do
    system '/usr/bin/killall', '-kill', 'SafariNotificationAgent'
    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe CS6 Design and Web Premium/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{staged_path}/uninstall.xml"
  end

  caveats 'Installation or Uninstallation may fail with Exit Code 19 (Conflicting Processes running) if Browsers, Safari Notification Service or SIMBL Services (e.g. Flashlight) are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Logs in /Library/Logs/Adobe/Installers if Installation or Uninstallation fails, to identifify the conflicting processes.'
end
