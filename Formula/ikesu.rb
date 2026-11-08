class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.107"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.107/ikesu-darwin-arm64"
      sha256 "2f7202577ae42a853b5d69abfa361bcabce35f8d8b113cc7017ed44b32eeadfc"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.107/ikesu-darwin-amd64"
      sha256 "4fec1fe29822a34bc02e7bddd855bd5a9a2c279783aa96575e34414dd8dea906"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.107/ikesu-linux-arm64"
      sha256 "c75840ad618321d04169a21d43e26c1913feba769d77487ea8dc43530ef99c03"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.107/ikesu-linux-amd64"
      sha256 "c38ab8b1acbea95ff35287a84fb3d3282088667d1b8110bda46f15b6bbd4b3c0"
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
