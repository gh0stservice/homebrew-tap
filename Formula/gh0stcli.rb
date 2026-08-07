class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.1.12"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.12/gh0stcli_0.1.12_darwin_arm64.tar.gz"
      sha256 "880c01949856af28096c7e0e6ab0e99fef9fa4d851ed92398becd89a06a79478"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.12/gh0stcli_0.1.12_darwin_amd64.tar.gz"
      sha256 "7912172b8ac51ddaf898f3c2dd3194a55d800faa1f39ebf59a70a2c948cca260"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.12/gh0stcli_0.1.12_linux_arm64.tar.gz"
      sha256 "26fa92f614b6b92c62c79ff4fa051a2da23aade0dfeafa2a04b79a8935c64d32"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.12/gh0stcli_0.1.12_linux_amd64.tar.gz"
      sha256 "f1456b4f1435496bdcac0c1f3943a2df16ffda8408ac3acfd31d2c4adaf2b556"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
