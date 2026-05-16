class Metastack < Formula
  desc "Generic CLI for creating and managing meta-repository workspaces"
  homepage "https://github.com/StackCube/metastack"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://updates.stackcube.dev/metastack/v0.4.0/metastack-darwin-arm64"
      sha256 "PLACEHOLDER_UPDATE_AFTER_v0.4.0_RELEASE_IS_PUBLISHED"
    end
    on_intel do
      url "https://updates.stackcube.dev/metastack/v0.4.0/metastack-darwin-amd64"
      sha256 "PLACEHOLDER_UPDATE_AFTER_v0.4.0_RELEASE_IS_PUBLISHED"
    end
  end

  on_linux do
    on_arm do
      url "https://updates.stackcube.dev/metastack/v0.4.0/metastack-linux-arm64"
      sha256 "PLACEHOLDER_UPDATE_AFTER_v0.4.0_RELEASE_IS_PUBLISHED"
    end
    on_intel do
      url "https://updates.stackcube.dev/metastack/v0.4.0/metastack-linux-amd64"
      sha256 "PLACEHOLDER_UPDATE_AFTER_v0.4.0_RELEASE_IS_PUBLISHED"
    end
  end

  def install
    bin.install Pathname(stable.url.split("/").last) => "metastack"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metastack --version")
  end
end
