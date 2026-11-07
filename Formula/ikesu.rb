class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.88"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.88/ikesu-darwin-arm64"
      sha256 "6b6fe128bb1f6221323b6c6b193f41afa6a490dd80873192b3dc657b2c49ce40"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.88/ikesu-darwin-amd64"
      sha256 "3bcfcc5b6a2e7aa026ca417fef3089536b86267966106100cb6829e91bb7d76f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.88/ikesu-linux-arm64"
      sha256 "7648509086c8cbae21f9615484a2955ccf56fe43bea6d29d2ced2b2874924367"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.88/ikesu-linux-amd64"
      sha256 "56d8e49e3321f618412560e58ebd1a7b5beb050bcecbe72f32eeaa23ee4b31c9"
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
