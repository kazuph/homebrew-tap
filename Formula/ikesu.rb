class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.22/ikesu-darwin-arm64"
      sha256 "288598c1e9cdeadd908a443d92b49b420dc19063e4422846c24669c1f923c226"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.22/ikesu-darwin-amd64"
      sha256 "3fcab37e642d4677ee4d73e8c29955852bbbd82ee05459fe8e579be4e91a2c3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.22/ikesu-linux-arm64"
      sha256 "7ab049f03442d255982d41bfa8e7be64b219b43577ef760dfae7387ae907494e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.22/ikesu-linux-amd64"
      sha256 "6355bd0bca1f5a276ba81dec92a08de51e44a3c4d9a87f0ba208a41133592cfc"
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
