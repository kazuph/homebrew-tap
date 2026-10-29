class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.35/ikesu-darwin-arm64"
      sha256 "ef3251471f9e8e854d4f893fb14dd9db2fdfa5740b18d0ea40a9a90f3f6a31bb"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.35/ikesu-darwin-amd64"
      sha256 "7c0cc0879c2104592698ea7878064c1fca08610a44694a5cddf4c771a7ffc8db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.35/ikesu-linux-arm64"
      sha256 "f09a50cc6a5964153853720901dfea7e02a0beb85e35be48435c212e49e3b8e3"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.35/ikesu-linux-amd64"
      sha256 "0cf56f6fa76bfd34a0e41aeb5f7ff54896aefbb47c1a7203694edd6a06ec6842"
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
