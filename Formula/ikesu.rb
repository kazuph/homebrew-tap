class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.191"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.191/ikesu-darwin-arm64"
      sha256 "8c3fdda5bbab1153d08d3effcd2c4efcdd5fa119d64520b7f8c86c0f44a01306"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.191/ikesu-darwin-amd64"
      sha256 "1fa323310d68fac57c3810bc77dc68b53d5ebbf5b1c034e3c50d2e3b82a386b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.191/ikesu-linux-arm64"
      sha256 "2a3f39c0c934cebb2cb4abc2b157dffc6aeaba5ab6f1646d01c29c917c383e50"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.191/ikesu-linux-amd64"
      sha256 "5066e5296f7db475cfb3df45451d1d6ace30ddc187711775108a4ba9f53abed1"
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
