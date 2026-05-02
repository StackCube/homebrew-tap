class Stackcube < Formula
  desc "Engineer-facing CLI for the StackCube PaaS"
  homepage "https://stackcube.dev"
  version "0.5.0"
  url "https://updates.stackcube.dev/stackcube/v0.5.0/stackcube-darwin-arm64"
  sha256 "3c3a2e2d872c40684bb415e39cf524e892d8b2e1546cf84171c840d60c882996"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install Pathname(stable.url.split("/").last) => "stackcube"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stackcube --version")
  end
end
