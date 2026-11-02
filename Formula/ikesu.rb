class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.59"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.59/ikesu-darwin-arm64"
      sha256 "1a8166b831c7a2b4ca82dbc205f93d4540d1b52c8b4cde06ba40f50d4892d63b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.59/ikesu-darwin-amd64"
      sha256 "969fed7c590ee83767be9b2f3b9a8235443f799adcb289c6d20aeaf9871fb505"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.59/ikesu-linux-arm64"
      sha256 "908c73ab7f28307bbabc1b10e6a17d62cbce35dd9eb1be0a6ba86dabbabcb86c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.59/ikesu-linux-amd64"
      sha256 "50cd9151b588aeff69c7bc39508356596dce929531d1ac83426bc275d4e3af11"
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
