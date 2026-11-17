class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.165"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.165/ikesu-darwin-arm64"
      sha256 "9bb9b4b576e95a6f4569514347af78d3c669f6e9823b35d2fd7eb3bdad1cc5bc"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.165/ikesu-darwin-amd64"
      sha256 "336e043f8dbc9d013dc06c7b302073e01498cef57b076fd93bbeddecd98a1ed5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.165/ikesu-linux-arm64"
      sha256 "dd58cfd9c188bc3738f5299cbd2cbd725d436e2421a5b21dfb833d60b77a2ef2"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.165/ikesu-linux-amd64"
      sha256 "55818f3665e3e29f38b17cae472add47c97bf4dbb73c14444cc3a1d3ec306be0"
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
