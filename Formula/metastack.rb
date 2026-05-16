class Metastack < Formula
  desc "Generic CLI for creating and managing meta-repository workspaces"
  homepage "https://github.com/StackCube/metastack"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://updates.stackcube.dev/metastack/v0.4.0/metastack-darwin-arm64"
      sha256 "43d039902b70061bbe57a945a9f45c16af3a1cb29b4e8eed937138f3eccd66c5"
    end
    on_intel do
      url "https://updates.stackcube.dev/metastack/v0.4.0/metastack-darwin-amd64"
      sha256 "50a4bb9096dd28122bd5887e52871c9fb1fc3ff7c7450cdfa69476eb5904376c"
    end
  end

  on_linux do
    on_arm do
      url "https://updates.stackcube.dev/metastack/v0.4.0/metastack-linux-arm64"
      sha256 "add9b0c97950d17a5e2382311b04c3743687b1a355b389e3ba3eaed6b3ef640b"
    end
    on_intel do
      url "https://updates.stackcube.dev/metastack/v0.4.0/metastack-linux-amd64"
      sha256 "11eeb18cccf1b3d947afc3cf063cd9b7d5cccd8d208052a252143ff25e979227"
    end
  end

  def install
    bin.install Pathname(stable.url.split("/").last) => "metastack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metastack --version")
  end
end
