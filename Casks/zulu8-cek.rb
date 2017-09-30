cask 'zulu8-cek' do
  version '1.8.0_144'
  sha256 '8021a28b8cac41b44f1421fd210a0a0822fcaf88d62d2e70a35b2ff628a8675a'

  url 'https://cdn.azul.com/zcek/bin/ZuluJCEPolicies.zip',
      referer: 'https://www.azul.com/products/zulu-and-zulu-enterprise/zulu-cryptography-extension-kit/'
  name 'Cryptography Extension Kit for Zulu 8'
  homepage 'https://www.azul.com/products/zulu-and-zulu-enterprise/zulu-cryptography-extension-kit/'

  depends_on cask: 'zulu8'

  stage_only true

  postflight do
    system_command '/bin/mv',
                   args: ['-f', "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar", "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar.bak"],
                   sudo: true
    system_command '/bin/mv',
                   args: ['-f', "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar", "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar.bak"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', staged_path.join('ZuluJCEPolicies', 'local_policy.jar'), "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', staged_path.join('ZuluJCEPolicies', 'US_export_policy.jar'), "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar"],
                   sudo: true
  end

  uninstall_postflight do
    system_command '/bin/mv',
                   args: ['-f', "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar.bak", "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/local_policy.jar"],
                   sudo: true
    system_command '/bin/mv',
                   args: ['-f', "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar.bak", "/Library/Java/JavaVirtualMachines/zulu#{version}.jdk/Contents/Home/jre/lib/security/US_export_policy.jar"],
                   sudo: true
  end

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the Terms of Use at

      https://www.azul.com/products/zulu-and-zulu-enterprise/zulu-cryptography-extension-kit/
  EOS
end
