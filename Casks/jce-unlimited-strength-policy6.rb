cask 'jce-unlimited-strength-policy6' do
  version '1.6'
  sha256 'd0c2258c3364120b4dbf7dd1655c967eee7057ac6ae6334b5ea8ceb8bafb9262'

  url "http://download.oracle.com/otn-pub/java/jce_policy/#{version.split('.')[1]}/jce_policy-#{version.split('.')[1]}.zip",
      :cookies => { 'oraclelicense' => 'accept-securebackup-cookie' }
  name 'Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files'
  homepage "http://www.oracle.com/technetwork/java/javase/downloads/jce-#{version.split('.')[1]}-download-429243.html"
  license :gratis

  postflight do
    `/usr/libexec/java_home -v #{version} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").uniq.each do |path|
      system '/usr/bin/sudo', '-E', '--',
        '/bin/cp', '-an', "#{path}/lib/security/US_export_policy.jar", "#{path}/lib/security/US_export_policy.jar.bak"
      system '/usr/bin/sudo', '-E', '--',
        '/bin/cp', '-an', "#{path}/lib/security/local_policy.jar", "#{path}/lib/security/local_policy.jar.bak"
      system '/usr/bin/sudo', '-E', '--',
        '/bin/ln', '-nsf', "#{staged_path}/jce/US_export_policy.jar", "#{path}/lib/security/US_export_policy.jar"
      system '/usr/bin/sudo', '-E', '--',
        '/bin/ln', '-nsf', "#{staged_path}/jce/local_policy.jar", "#{path}/lib/security/local_policy.jar"
    end
  end

  uninstall_postflight do
    `/usr/libexec/java_home -v #{version} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").uniq.each do |path|
      system '/usr/bin/sudo', '-E', '--',
        '/bin/mv', '-f', "#{path}/lib/security/US_export_policy.jar.bak", "#{path}/lib/security/US_export_policy.jar"
      system '/usr/bin/sudo', '-E', '--',
        '/bin/mv', '-f', "#{path}/lib/security/local_policy.jar.bak", "#{path}/lib/security/local_policy.jar"
    end
  end

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the Oracle Binary Code License Agreement for Java SE at
      http://www.oracle.com/technetwork/java/javase/terms/license/index.html
  EOS
end
