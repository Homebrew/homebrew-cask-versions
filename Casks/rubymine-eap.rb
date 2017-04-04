cask 'rubymine-eap' do
  version '2017.1,171.3019.14'
  sha256 'ff632a5f305e9954ee8b60e666b2ea551b6c46af8f2a584d950b79aed9e2200f'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.after_comma}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Early+Access+Program'

  conflicts_with cask: 'rubymine'

  app 'RubyMine EAP.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'mine') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Preferences/RubyMine#{version.major_minor}",
                "~/Library/Application Support/RubyMine#{version.major_minor}",
                "~/Library/Caches/RubyMine#{version.major_minor}",
                "~/Library/Logs/RubyMine#{version.major_minor}",
              ]
end
