class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.86"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.86/ikesu-darwin-arm64"
      sha256 "ef7f5cf0e26e210a58c0ecf73b3148440b96f3edadc0aa6dae306960b3d7d054"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.86/ikesu-darwin-amd64"
      sha256 "e3860902773c8dd2cff159356d12181f95a82f105d43b6e86caeb15efda0ed3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.86/ikesu-linux-arm64"
      sha256 "32cb2b6fdfad4dffe7cafa77bc0416ea708370651e0eaeefae0aa731ac8aa114"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.86/ikesu-linux-amd64"
      sha256 "286c4a76ff5b6052992ead762d7534089f7de148053c1a6d6c7a2f61b37bab63"
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
