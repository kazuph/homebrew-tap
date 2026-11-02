class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.58/ikesu-darwin-arm64"
      sha256 "4b826b5fad26a0e8a940c8785f82df38826977ba9705c80d533e73a5992c5818"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.58/ikesu-darwin-amd64"
      sha256 "f5e37b72ac1745c279107f0c8f1d61278637ebe913e033683225f5c6f53b1dcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.58/ikesu-linux-arm64"
      sha256 "34a48dfc2207e939a3572d8fe9d5791efec381cc79d8c85fb2143d9124eb34ed"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.58/ikesu-linux-amd64"
      sha256 "a7d7ad734e03b4cc63923f56d2aaa97eadfc7d239cad82c5a249e07ad4655b2f"
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
