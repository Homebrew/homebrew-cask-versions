cask "awscli2" do
  version "2.7.9"
  sha256 "e1490af8220cc4b1753c969d0333454c2a890a3fc058cbf5bce96fd2afc98492"

  url "https://awscli.amazonaws.com/AWSCLIV2-#{version}.pkg",
      verified: "awscli.amazonaws.com/"
  name "AWS Command Line Interface"
  desc "Unified tool to manage AWS services"
  homepage "https://aws.amazon.com/cli/"

  livecheck do
    url "https://github.com/aws/aws-cli.git"
    regex(/^v?(2(?:\.\d+)*)$/i)
  end

  pkg "AWSCLIV2-#{version}.pkg"

  uninstall pkgutil: "com.amazon.aws.cli2"
end
