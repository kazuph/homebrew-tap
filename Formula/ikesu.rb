class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.180"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.180/ikesu-darwin-arm64"
      sha256 "ce6dbd4d5d0bfedebd60e6e31177cc0686c58e6bc764772b07eeca337abaae4c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.180/ikesu-darwin-amd64"
      sha256 "f80ce5dbc76cf8e9b66999f5df4f26324d07e27aa1ac43e53eefcdb05cd103bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.180/ikesu-linux-arm64"
      sha256 "9b22d5dfa3ca152e26d16efe4fd58ee44e32cd543e60f8cc36f8c0e3517d2aaa"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.180/ikesu-linux-amd64"
      sha256 "306649daa04aa065f4dade99f26bb3164a0b832fb368fedadbf4e3d1531cbdae"
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
