class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.89"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.89/ikesu-darwin-arm64"
      sha256 "f9d16cd5b5edb1a03043579c6c9abe2ec47028ecb806a6c11dfe3b12a63ef3e6"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.89/ikesu-darwin-amd64"
      sha256 "8886803245ca8f30772086f8bb6a6037f7b930e63221c240debe3a90684fb373"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.89/ikesu-linux-arm64"
      sha256 "de6ca8ff2f1c74575fe881f75b8966514807677cc03d51ca20e6c0146a737fa1"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.89/ikesu-linux-amd64"
      sha256 "cac399cedada59e50b571c1d46bcd88496ae8f6ab61da4789804ecdd33444ed4"
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
