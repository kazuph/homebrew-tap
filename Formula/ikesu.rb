class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.91"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.91/ikesu-darwin-arm64"
      sha256 "e7353751f45610210ff5f1b2aa6a7a4448b66379d5547c9e80615c8dfb20413d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.91/ikesu-darwin-amd64"
      sha256 "7c96730db710555639dc2aa4eeba85ccc06496221ccfe213c5513925c51c0711"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.91/ikesu-linux-arm64"
      sha256 "7495c6c58a9d302733b2a21a5f06ac38d0906ec1137b8f746465042cd016d460"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.91/ikesu-linux-amd64"
      sha256 "bb99980f90f3a5137c31f56ebbd99e23aecfc2823d9e4ee004e2d707cdb22d2b"
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
