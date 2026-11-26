class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.201"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.201/ikesu-darwin-arm64"
      sha256 "bf515072635266b3738757a276ea4d1c920d38ff54fda434d58724b74d578771"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.201/ikesu-darwin-amd64"
      sha256 "84dcc7ca364abc1fb920fa732c6c7d881ec78a483647d3a2351fe61401b5fd52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.201/ikesu-linux-arm64"
      sha256 "ae3732bea12a6e9dc42789d5fc2d32489a0ca7c3387c9e0757256fe9165e3a15"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.201/ikesu-linux-amd64"
      sha256 "f814a110f6e5e8de7867bf9bfcc352dffe58e85082d7af10da4233d16c591e1b"
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
