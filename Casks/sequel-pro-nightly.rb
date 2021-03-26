cask "sequel-pro-nightly" do
  version :latest
  sha256 :no_check

  url do
    result = curl_output("--fail", "--silent", "https://sequelpro.com/builds/latest-test-build.xml")
    result.assert_success!
    result.stdout[%r{https://sequelpro.com/builds/Sequel-Pro-Build-\w+.zip}]
  end
  name "Sequel Pro"
  homepage "https://sequelpro.com/test-builds"

  app "Sequel Pro.app"

  zap trash: "~/Library/Application Support/Sequel Pro/Data"
end
