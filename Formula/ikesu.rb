class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.56/ikesu-darwin-arm64"
      sha256 "ac325c792a016b4774bffba20b44790553282f83a8caa1893bd3a29bd57e8f7a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.56/ikesu-darwin-amd64"
      sha256 "2626d8da3e99ef8a6cde50964648cb5846287364f2f00e1aff78a7949c3e9e86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.56/ikesu-linux-arm64"
      sha256 "dd700f875bc38d946d403a31619903ebd6f87d6605acbb8a9e705e89aace7cf8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.56/ikesu-linux-amd64"
      sha256 "b0592864ec8319062da55347164bd36755c9b5ef88b4fb0f940954565ef33231"
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
