class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.108"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.108/ikesu-darwin-arm64"
      sha256 "70bc40b4d2243f75effb0669310d62571f78683aa5ad586873c0439d41f24916"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.108/ikesu-darwin-amd64"
      sha256 "8f2ad6e3f270eaa9a0df209fbd291a0fccee4ef18cc46eb368ff3e9eea2fbb33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.108/ikesu-linux-arm64"
      sha256 "0794be309de509f3e1eff076bbcc4338281679bc007779c329f38a4c80ed4221"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.108/ikesu-linux-amd64"
      sha256 "7282f8de3ba6cdf0ba35839e8b0a4dc4235316adf9eacbf102de21b8d392be52"
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
