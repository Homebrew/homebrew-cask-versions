cask 'virtualbox-extension-pack-beta' do
  version '5.1.7,111038'
  sha256 'e32db86760e1130a188ef5f1d649df2fc3881bed1bf3a9d0491118e07774cbc1'

  url "http://www.virtualbox.org/download/testcase/Oracle_VM_VirtualBox_Extension_Pack-#{version.before_comma}-#{version.after_comma}.vbox-extpack"
  name 'Oracle VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org'
  license :closed

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
