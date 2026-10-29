class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.42/ikesu-darwin-arm64"
      sha256 "86ea44eba164322380f23ffce827bc84c80736fcd54069da2eeddd53c9e690bb"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.42/ikesu-darwin-amd64"
      sha256 "ff4da426651734a626ca4ccc3fd5538a6f57f21fd050132964db81658c897a53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.42/ikesu-linux-arm64"
      sha256 "32af341598aea5ea4241de49b16d38ef5fe7d667bcfa214359995deaa8a1efa2"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.42/ikesu-linux-amd64"
      sha256 "856a841d224c883864e2117a5f4324fe04914e6a4e5fca7c91e9ce4ad1bb3118"
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
