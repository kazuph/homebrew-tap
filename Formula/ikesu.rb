class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.135"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.135/ikesu-darwin-arm64"
      sha256 "e734032346fd25c236c1e971c0af2e01dcf03feb2bab1d94c836a512b7cc290e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.135/ikesu-darwin-amd64"
      sha256 "2324d373203661f0a1698529bfb33a4ead85d52f067af9edc8afd37df4700057"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.135/ikesu-linux-arm64"
      sha256 "de8bd82799a8f3cceb066ff583926ba2947a5eb8d475243598515623f6135896"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.135/ikesu-linux-amd64"
      sha256 "f514f9ae8d1845f7619caabbc417a947192ba200dd0ac7341c3a7bd655e89647"
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
