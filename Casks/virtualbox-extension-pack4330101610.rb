cask 'virtualbox-extension-pack4330101610' do
  version '4.3.30-101610'
  sha256 '770d49247976f2a0d14a66196dddf864c6b9d185671e2a29cab459fc28f105db'

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*},'')}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  name 'VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org'
  license :closed
  tags :vendor => 'Oracle'

  stage_only true

  container :type => :naked

  postflight do
    system 'sudo', 'VBoxManage', 'extpack', 'install', '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  end

  uninstall_postflight do
    system 'sudo', 'VBoxManage', 'extpack', 'uninstall', 'Oracle VM VirtualBox Extension Pack'
  end

  depends_on :cask => 'virtualbox4330101610'
end
