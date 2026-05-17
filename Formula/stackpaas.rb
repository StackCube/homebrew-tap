class Stackpaas < Formula
  desc "Engineer-facing CLI for the StackCube PaaS"
  homepage "https://stackcube.dev"
  version "0.6.0"
  url "https://updates.stackcube.dev/stackpaas/v0.6.0/stackpaas-darwin-arm64"
  sha256 "2d42cd28a8ca0e8ccb34eafde62885e258a2f7b62d4d673e33bf315acefe72a7"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install Pathname(stable.url.split("/").last) => "stackpaas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stackpaas --version")
  end
end
