cask "sequel-pro-nightly" do
  version :latest
  sha256 :no_check

  url "https://sequelpro.com/builds/latest-test-build.xml" do |page|
    page[%r{https://sequelpro.com/builds/Sequel-Pro-Build-\w+.zip}]
  end
  name "Sequel Pro"
  homepage "https://sequelpro.com/test-builds"

  app "Sequel Pro.app"

  zap trash: "~/Library/Application Support/Sequel Pro/Data"
end
