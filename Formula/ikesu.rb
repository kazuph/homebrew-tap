class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.121"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.121/ikesu-darwin-arm64"
      sha256 "aa12e019dc25a2dbe245c8f85385d35039bacc2d1ab4458bdc2b0943bdeb5f80"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.121/ikesu-darwin-amd64"
      sha256 "a7fcbfa21d814fffa9b104d17af4d9956b6b5629491b6144cbacd0a3bc5f6a1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.121/ikesu-linux-arm64"
      sha256 "7744d63dab878c576f6cb15d4a1aaee0baecbd46be44e1f8ff3aa7bd1d7c9159"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.121/ikesu-linux-amd64"
      sha256 "5f0bce2c00bcef8250e66d55cab91748fba13f2213b003affbd5107c907fcb78"
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
