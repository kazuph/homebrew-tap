class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.178"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.178/ikesu-darwin-arm64"
      sha256 "c3cbb1916b37262fa5faab24e5806be5bb89781cb5b576480f6c8d9d999ad74f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.178/ikesu-darwin-amd64"
      sha256 "e0cdc61809d8445ceb0a17d637373acc95764519fa84ab905f9fa0c8a7f43d3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.178/ikesu-linux-arm64"
      sha256 "1fa2e7dae7d695b4dfc28b97992ddb78eb118163aa26ed396f4d7c98b8d0fb27"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.178/ikesu-linux-amd64"
      sha256 "c950fc898c8ee87df348852146a092364bfe51b935cd72a00e7cf36fb598e4c1"
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
