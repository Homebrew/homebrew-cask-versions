cask 'rubymine-eap' do
  version '2017.1.2,171.4249.6'
  sha256 '325c4f854d188c7f2cdf079a4a5c90b49841287e451301cec713c34ba183ee11'

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
