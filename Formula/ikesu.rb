class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.195"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.195/ikesu-darwin-arm64"
      sha256 "8239596821fe91e5917561a0b62704de3633a431b397c2f6ac56a2035e5de3b0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.195/ikesu-darwin-amd64"
      sha256 "56b25c198125b2a7debbf1fdcfaa25f050b70c3bda6f91984a73cebed5bf1912"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.195/ikesu-linux-arm64"
      sha256 "ebaede1b368f770f07fa1f19afe7d1505d13fec6428a51f56379e693cb4572b0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.195/ikesu-linux-amd64"
      sha256 "69ff6eb9e6b9f89a2517ba0448af458507935f604728f5aea189f30032d0c023"
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
