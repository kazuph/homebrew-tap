class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.157"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.157/ikesu-darwin-arm64"
      sha256 "f4acde48417b16edc354ed09f15669ff1f9b3d241c04052163bad2728db6a58d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.157/ikesu-darwin-amd64"
      sha256 "1343d681b53d4fb8f2b12acd28f1f26ba11c3ab5e372b3bc987912410707b8fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.157/ikesu-linux-arm64"
      sha256 "2fcf7a8ad9b0fec103a1694996ca53aa705e1f7855b321c86a5044a2ead8becd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.157/ikesu-linux-amd64"
      sha256 "7dd1693735d28bdcd3a64abfcedfe0cea8bebe4800ce25f30ba2889a9d9f1a94"
    end
  end

  def install
    bin.install stable.url.split("/").last => "ikesu"
    chmod 0755, bin/"ikesu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ikesu --version")
  end
end
