class SophosAntiVirusHomeEdition91 < Cask
  module Utils
    @@services = nil
    @@root = `echo $(brew --prefix)/Library/Taps/caskroom`.chomp
    @@dev_root = "#{@@root}/homebrew-cask/developer/bin"
    def self.get_sophos_services
      if !@@services
        @@services = `#{@@dev_root}/list_installed_launchjob_ids | grep com.sophos`.chomp.split
      end
    end
    
    def self.disable_sophos_services
      # Stop any existing sophos
      self.get_sophos_services
      
      @@services.each do |service|
        if service.include? 'uiserver' or service.include? '(+)'
          next
        end
        ohai "Stopping service #{service}..."
        cmd = ['/usr/bin/sudo', '-E', '--', '/bin/launchctl', 'unload', "/Library/LaunchDaemons/#{service}.plist"].join(' ')
        `#{cmd} > /dev/null 2>/dev/null`
      end
    end
    
    def self.enable_sophos_services
      # Re-enable sophos
      self.get_sophos_services
      
      @@services.each do |service|
        if service.include? 'uiserver' or service.include? '(+)'
          next
        end
        ohai "Starting service #{service}..."
        cmd = ['/usr/bin/sudo', '-E', '--', '/bin/launchctl', 'load', "/Library/LaunchDaemons/#{service}.plist"].join(' ')
        `#{cmd} > /dev/null 2>/dev/null`
      end
    end
    
    def self.install_path(cask)
      cask.class.caskroom.join(cask.title).join(cask.version.to_s)
    end
    
    def self.fix_existing_install
      # TODO: Smarter way of finding an existing install to work with `--force`
      dir = "/opt/homebrew-cask/Caskroom/sophos-anti-virus-home-edition91"
      if File.directory? dir
        ohai "Preparing existing installation found at #{dir}..."
        cmd = ['/usr/bin/sudo', '-E', '--', 'chmod', '-R', 'u+w', dir].join(' ')
        `#{cmd} > /dev/null 2>/dev/null`
      end
    end
  end

  version '9.1.5'
  sha256 'c8d0739f480f781582ac5eeeb72820acee61072c1e81807dd60ff74fe8c76334'

  url 'http://downloads.sophos.com/home-edition/savosx91_he.zip'
  homepage 'http://www.sophos.com/en-us/products/free-tools/sophos-antivirus-for-mac-home-edition.aspx/'
  
  Utils.fix_existing_install
  
  before_install do |cask|
    Utils.disable_sophos_services
    
    # The real installation
    # http://www.sophos.com/en-us/support/knowledgebase/14179.aspx
    ohai "Running the Sophos installer..."
    finished = system('/usr/bin/sudo', '-E', '--',
    "#{Utils.install_path(cask)}/Sophos Anti-Virus Home Edition.app/Contents/MacOS/tools/InstallationDeployer", '--install')

    if !finished
      onoes "The installer failed to complete. You can try running it yourself from #{Utils.install_path(cask)}/Sophos Anti-Virus Home Edition.app"
      # Can we link here?
      # link 'Sophos Anti-Virus Home Edition.app'
    else
      ohai "The installer finished successfully!"
    end
    
    # Re-enable sophos services
    Utils.enable_sophos_services
  end

  caveats do
    # Reboot is necessary if upgrading, TODO: check if this was an upgrade
    reboot
    puts "This installation requires administrative rights. You may be asked for your password during the install process."
    puts
  end
end