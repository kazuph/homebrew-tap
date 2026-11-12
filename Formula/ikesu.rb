class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.139"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.139/ikesu-darwin-arm64"
      sha256 "407674bf3f308f2a787ae043d84cbe17d49eac29ea562b40b2e97a12c64f15ab"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.139/ikesu-darwin-amd64"
      sha256 "192a4b11bde422fb5448eb2b56e38dd41fd7c52d7635588acbe65679d51de461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.139/ikesu-linux-arm64"
      sha256 "0106a7149768c574618bcfe1ca212ae10a6443ed25caec0076e44dc272866406"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.139/ikesu-linux-amd64"
      sha256 "b0c501a6a3fe742fbb2ce03d6cef29740654bc0e78ec2173bbe5b09c78c8d48f"
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
