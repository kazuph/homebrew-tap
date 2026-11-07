class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.95"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.95/ikesu-darwin-arm64"
      sha256 "6748f4036b104f695ef545f66581b903cf53749280b820bb487fd8157173e582"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.95/ikesu-darwin-amd64"
      sha256 "23faeba26b5c1b7f7b618ac0bc27d3720de4b5491c71f3e3b38c71badc4384dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.95/ikesu-linux-arm64"
      sha256 "b512be37ab50040419f3bfb7b49f39b98661a76056bb24af9a4c23b99cb88140"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.95/ikesu-linux-amd64"
      sha256 "719e51a42640aa40e3e9db0604ec925475855158bf14de4b1c33eeb4fdbeec1e"
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
