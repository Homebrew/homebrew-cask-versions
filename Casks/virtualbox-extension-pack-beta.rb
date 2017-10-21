cask 'virtualbox-extension-pack-beta' do
  version '5.2.0_RC1,118201'
  sha256 'fd73ff4e6a1c8677c0252a94d21423d1e59191c3ab2df00891d37d559899f0c2'

  url "http://download.virtualbox.org/virtualbox/#{version.before_comma}/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST-BETA.TXT',
          checkpoint: '1f753c9849a06ca6ad4b2df06d022a2dc42bee734c87d98759f911be52eb537b'
  name 'Oracle VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org/'

  depends_on cask: 'virtualbox-beta'
  container type: :naked

  stage_only true

  postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'install',
                           '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack",
                           '--accept-license=b674970f720eb020ad18926a9268607089cc1703908696d24a04aa870f34c8e8'
                         ],
                   sudo: true
  end

  uninstall_postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'uninstall',
                           'Oracle VM VirtualBox Extension Pack'
                         ],
                   sudo: true
  end

  caveats <<~EOS
    Installing this Cask means you have AGREED to the
    VirtualBox Personal Use and Evaluation License at

    https://www.virtualbox.org/wiki/VirtualBox_PUEL
  EOS
end
