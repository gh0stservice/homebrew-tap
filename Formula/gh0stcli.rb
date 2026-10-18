class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.11.1"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.11.1/gh0stcli_0.11.1_darwin_arm64.tar.gz"
      sha256 "47223bc8053760665de417e05c64de43f8575912f881ee60aab3fd289ac85c87"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.11.1/gh0stcli_0.11.1_darwin_amd64.tar.gz"
      sha256 "79df06026bbec5b7893ed417291a60376ccdf535541fa831e0cc3eb54b5a0f06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.11.1/gh0stcli_0.11.1_linux_arm64.tar.gz"
      sha256 "55fc12d25e039aecbe636fbd304b177eb1cebf99d07366da0c1884fab4550cb6"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.11.1/gh0stcli_0.11.1_linux_amd64.tar.gz"
      sha256 "36caa75c021fb788fc18e9894031464bd0f8d42c1e936704b842d03a3b482cbf"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
