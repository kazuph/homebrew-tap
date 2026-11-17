class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.170"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.170/ikesu-darwin-arm64"
      sha256 "f1b1d76bb82649e9fffe9052d721234c8b2e2206f568176c72657dd2f642af55"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.170/ikesu-darwin-amd64"
      sha256 "cffb39a905914d3515d84b1c730c3f9d08154a0daa975233ec71734d4c5d87b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.170/ikesu-linux-arm64"
      sha256 "e2618cbccb948b1575f96e4ab824efeeae2f14ba041d4b3b74fca3b1b6b34661"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.170/ikesu-linux-amd64"
      sha256 "9894b12f71146dc48627a75f7c0287043b2a4ae0bf92de41e46f18ff3976abd5"
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
