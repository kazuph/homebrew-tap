class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.175"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.175/ikesu-darwin-arm64"
      sha256 "2a735854fa1ac9a46da31b55fad9442b9d8d6db950fc15edf76e825b744c58dd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.175/ikesu-darwin-amd64"
      sha256 "f136faabd5b30c5009da0f2ed31d3b1b936caf8c0b96972003f3b2f9b7b7ad87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.175/ikesu-linux-arm64"
      sha256 "6bd8961995ae528b83abcbf51689e04a6667e66057ef3662355f0974f18ba101"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.175/ikesu-linux-amd64"
      sha256 "d1f69457e736d15bc873babdcdd810777c8c5d3ed7cb68392aa28457cd18b7bb"
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
