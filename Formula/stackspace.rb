class Stackspace < Formula
  desc "Generic CLI for creating and managing meta-repository workspaces"
  homepage "https://github.com/StackCube/stackspace"
  version "0.2.0"
  url "https://updates.stackcube.dev/stackspace/v0.2.0/stackspace-darwin-arm64"
  sha256 "0e88928b5ad24e17ccfa040a63a6ab73b28076de1145867b49643d520ade9d73"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install Pathname(stable.url.split("/").last) => "stackspace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stackspace --version")
  end
end
