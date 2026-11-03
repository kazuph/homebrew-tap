class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.68"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.68/ikesu-darwin-arm64"
      sha256 "065111753b2ae86c78935afa2735575cf1ed9cb31e167d3811423c23c632ccc7"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.68/ikesu-darwin-amd64"
      sha256 "17fe1346a1f084c83f5c2e6a07b1b24665b964876066a9d468908b1e89b831a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.68/ikesu-linux-arm64"
      sha256 "8099b4fc9941fe764e5d8fc302853424239e71b56a61243d94b50d1d2c88728f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.68/ikesu-linux-amd64"
      sha256 "c07aebb1b2aa73cd8bb461049307e3f35562c8280ed4bf8ea82cecee372fb044"
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
