class Stackcubed < Formula
  desc "Stackcube PaaS daemon"
  homepage "https://stackcube.dev"
  version "0.5.0"
  url "https://updates.stackcube.dev/stackcubed/v0.5.0/stackcubed-darwin-arm64"
  sha256 "f1c24fa2a52bb958615f69510a34ff34917c17be84cacf449d1f01e25927e067"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install Pathname(stable.url.split("/").last) => "stackcubed"
  end

  def caveats
    <<~EOS
      To run stackcubed as a launchd LaunchAgent:

        stackcubed service install \\
            --admin-key ~/.ssh/id_ed25519.pub \\
            --domain example.com

      Then verify with:

        stackcubed service status
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stackcubed --version")
  end
end
