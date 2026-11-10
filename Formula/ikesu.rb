class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.133"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.133/ikesu-darwin-arm64"
      sha256 "49573496437cdaaf30075fd389ff1d566714b909c89bc339c623d49aa4457d3f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.133/ikesu-darwin-amd64"
      sha256 "3f82aa97aa24da8664f402b33677f0c961882462212ba9d37f9d4df89164e8f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.133/ikesu-linux-arm64"
      sha256 "c2a8679bcbd544901005299f875f1350415d602284e2e622fc7e9a53e51fccab"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.133/ikesu-linux-amd64"
      sha256 "942b01898793e2b9dd69ed7fcd0c5ebc0bb576b8914dc27253968679aded008c"
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
