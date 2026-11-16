class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.152"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.152/ikesu-darwin-arm64"
      sha256 "71e07d0b98b79d29fca58a26b99626aa650e7aba308cc131a4769b43ff5be868"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.152/ikesu-darwin-amd64"
      sha256 "837b1c53e0de6a55947b9754a2b1ddd09126cb7ccc8e362c54f07df42a0814a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.152/ikesu-linux-arm64"
      sha256 "4394343cf8ac84bca0747eb6810ccc92ef6eb59e4cfaf217a47b5de40023ba18"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.152/ikesu-linux-amd64"
      sha256 "8b3ce81b17b5db34cd4005265d9187aeab5d430cdd4f2a8be4a7fb3b604f2dd6"
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
