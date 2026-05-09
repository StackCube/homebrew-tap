class Stackspace < Formula
  desc "Generic CLI for creating and managing meta-repository workspaces"
  homepage "https://github.com/StackCube/stackspace"
  version "0.1.0"
  url "https://updates.stackcube.dev/stackspace/v0.1.0/stackspace-darwin-arm64"
  sha256 "dbbd46cdb3f53dad560f05686a37b219ef738dddcd6f387a60e8e00a45fc0438"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install Pathname(stable.url.split("/").last) => "stackspace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stackspace --version")
  end
end
