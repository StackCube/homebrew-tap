class Stackspace < Formula
  desc "Generic CLI for creating and managing meta-repository workspaces"
  homepage "https://github.com/StackCube/stackspace"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://updates.stackcube.dev/stackspace/v0.3.0/stackspace-darwin-arm64"
      sha256 "3de7cefbd4e1edfa0324d6f2bbde408bd6c2d324e52b43a0311e672eb918a307"
    end
    on_intel do
      url "https://updates.stackcube.dev/stackspace/v0.3.0/stackspace-darwin-amd64"
      sha256 "4396abd53f4193063fadc568a39ad1d4c004ee2a3fbc03942e54bc7f601e1d41"
    end
  end

  on_linux do
    on_arm do
      url "https://updates.stackcube.dev/stackspace/v0.3.0/stackspace-linux-arm64"
      sha256 "c95448df7a1ef7d948139889ef7689563a049ed31e5255fafecee6d300cac351"
    end
    on_intel do
      url "https://updates.stackcube.dev/stackspace/v0.3.0/stackspace-linux-amd64"
      sha256 "ddaa671e6a223ffc71acd0b1c2e354283ec8beae387887a747d2b3f1dfc65a0d"
    end
  end

  def install
    bin.install Pathname(stable.url.split("/").last) => "stackspace"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stackspace --version")
  end
end
