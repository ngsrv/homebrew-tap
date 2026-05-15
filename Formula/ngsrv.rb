class Ngsrv < Formula
  desc "Secure WebSocket-based tunnel CLI for exposing local servers to the internet"
  homepage "https://ngsrv.com"
  version "2.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.ngsrv.com/v2.3.2/ngsrv_2.3.2_darwin-arm64.tar.gz"
      sha256 "745652b82e2b5afe05ad86e40d620086a69b6f55858bf72f1d0c9eab9c782ead"
    end
    on_intel do
      url "https://releases.ngsrv.com/v2.3.2/ngsrv_2.3.2_darwin-amd64.tar.gz"
      sha256 "0349537d657c37aff97b96743ab93130d43500f25f54517f6a5c5bed14b6b5f8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.ngsrv.com/v2.3.2/ngsrv_2.3.2_linux-arm64.tar.gz"
      sha256 "da2eca4e49fccc7069766a951dccfd11f81ab9b82f210385bd9d5d19c3eadab4"
    end
    on_intel do
      url "https://releases.ngsrv.com/v2.3.2/ngsrv_2.3.2_linux-amd64.tar.gz"
      sha256 "dc837cd6ef1272de6d4be2649c7ed48327ccb3e2005e223717a4d7808c44ab3f"
    end
  end

  def install
    bin.install "ngsrv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ngsrv version")
  end
end
