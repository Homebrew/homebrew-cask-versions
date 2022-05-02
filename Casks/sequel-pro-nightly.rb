cask "sequel-pro-nightly" do
  version :latest
  sha256 :no_check

  url "http://sequelpro.com/builds/latest-test-build.xml" do |page|
    page[%r{https://sequelpro.com/builds/Sequel-Pro-Build-\w+.zip}].sub("https:", "http:")
  end
  name "Sequel Pro"
  desc "MySQL/MariaDB database management platform"
  homepage "http://sequelpro.com/test-builds"

  app "Sequel Pro.app"

  zap trash: "~/Library/Application Support/Sequel Pro/Data"
end
