class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.49/ikesu-darwin-arm64"
      sha256 "315024caa7ebbdb7dedeb3c0787e3a835ec8b1241d9e90eb60a52a01c960e2b0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.49/ikesu-darwin-amd64"
      sha256 "658b8f78591583c8905c64bd464157468115b6573cd83c2c2f81b82bad347f3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.49/ikesu-linux-arm64"
      sha256 "1accb6358f64d8e89653392c19725acdce5e00c94a4c4f28a09165a956b733d5"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.49/ikesu-linux-amd64"
      sha256 "a9e219ce11997fd487db0642dad318d2b70059e68716023fcdce12a46a857b6a"
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
