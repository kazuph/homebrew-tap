class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.26/ikesu-darwin-arm64"
      sha256 "81b740d428c61831f48782bfe0217878d890b66c3719841aa663b75cfef13706"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.26/ikesu-darwin-amd64"
      sha256 "a5dffb2424247957333767c5f3e71a73ecc81a81e8522adfaa9de6570e9cac4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.26/ikesu-linux-arm64"
      sha256 "af0b01cf4fe6115e0fb13f281d6c5040d849749ddc8a9bd632ea9b57caf865ac"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.26/ikesu-linux-amd64"
      sha256 "4a7ace2660e37377eb0be5b18c7502aba7c905f23371c1fd775112aa93069c4b"
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
