class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.33/ikesu-darwin-arm64"
      sha256 "e25af6b0038a5359be708f236689f6985c12c20d80b665b5d673f065f2527911"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.33/ikesu-darwin-amd64"
      sha256 "d9b93195fa03e4a74b047eb38352e3bee81a58394e60b68a41858813f3fb7ee5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.33/ikesu-linux-arm64"
      sha256 "2a9c67680b459010c4a1d12dc9413321d0b8515a7712c8c6f43298983e5f4529"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.33/ikesu-linux-amd64"
      sha256 "dfdb1d49c8d3359d1404fe5baf2d5eac7f5fe5b8ad35d3a1b6fc055d8f072980"
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
