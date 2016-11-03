cask 'virtualbox-extension-pack-beta' do
  version '5.1.9,111643'
  sha256 '23bd21f00a0bec9355da05185295093f5011d1aa471c67f756d42674accf195e'

  url "http://www.virtualbox.org/download/testcase/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack"
  name 'Oracle VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org'

  depends_on cask: 'virtualbox-beta'
  container type: :naked

  stage_only true

  postflight do
    system 'sudo', 'VBoxManage', 'extpack', 'install', '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack"
  end

  uninstall_postflight do
    system 'sudo', 'VBoxManage', 'extpack', 'uninstall', 'Oracle VM VirtualBox Extension Pack'
  end
end
