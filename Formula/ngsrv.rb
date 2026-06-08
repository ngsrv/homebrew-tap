class Ngsrv < Formula
  desc "Secure WebSocket-based tunnel CLI for exposing local servers to the internet"
  homepage "https://ngsrv.com"
  version "2.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.ngsrv.com/v2.3.3/ngsrv_2.3.3_darwin-arm64.tar.gz"
      sha256 "e78f86168502c923fbaeea0594355a0d953cb87012f4ec364f3621a107ce0b57"
    end
    on_intel do
      url "https://releases.ngsrv.com/v2.3.3/ngsrv_2.3.3_darwin-amd64.tar.gz"
      sha256 "77afc6c533f2523708c3b5931f61f161ad7977a9be84e02e11dd7146d6f0c061"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.ngsrv.com/v2.3.3/ngsrv_2.3.3_linux-arm64.tar.gz"
      sha256 "9ad2e25cb0b233d992b74e5eddb9b6ef005b3cc97868344a1e6faf14e654eb85"
    end
    on_intel do
      url "https://releases.ngsrv.com/v2.3.3/ngsrv_2.3.3_linux-amd64.tar.gz"
      sha256 "c452cc1b981a63143e94c3a4098616a82481e608bd63e483ecbbc08db985d5ef"
    end
  end

  def install
    bin.install "ngsrv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ngsrv version")
  end
end
