class Ngsrv < Formula
  desc "Secure WebSocket-based tunnel CLI for exposing local servers to the internet"
  homepage "https://ngsrv.com"
  version "2.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.ngsrv.com/v2.3.4/ngsrv_2.3.4_darwin-arm64.tar.gz"
      sha256 "c169bf68349e443199d8a3a1148a463bf43b4ff22c73c4efde5eacb80d266d35"
    end
    on_intel do
      url "https://releases.ngsrv.com/v2.3.4/ngsrv_2.3.4_darwin-amd64.tar.gz"
      sha256 "4566333257845ef5384bf552272fb24460dcf359fdd3a832f5f51cfd123ecdb1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.ngsrv.com/v2.3.4/ngsrv_2.3.4_linux-arm64.tar.gz"
      sha256 "c79b04ce53b2a988d3bdb187c352ea1c708bd98981375cf7759b828a301fd9a9"
    end
    on_intel do
      url "https://releases.ngsrv.com/v2.3.4/ngsrv_2.3.4_linux-amd64.tar.gz"
      sha256 "1c83c2e71b43de29e407ebc74d09df8cbf3478dc39098090dda5ac3e5058fde0"
    end
  end

  def install
    bin.install "ngsrv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ngsrv version")
  end
end
