class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.8.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.8.0/gh0stcli_0.8.0_darwin_arm64.tar.gz"
      sha256 "395ab9862385dff55726d77594cb5234c39796fa4747d779b8ded74558842076"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.8.0/gh0stcli_0.8.0_darwin_amd64.tar.gz"
      sha256 "6f7a9ad521f2352f64e536b1f7d5016c694a3e561ee6d604e7b154d9853009fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.8.0/gh0stcli_0.8.0_linux_arm64.tar.gz"
      sha256 "fd2ed3bb5c1f34233e7a5477c85809b3cfb3853f045375e67d458c35d455ce13"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.8.0/gh0stcli_0.8.0_linux_amd64.tar.gz"
      sha256 "a916a17bd7224e5869a2e2fdb7c70c27d813ae2451dcd8f5a6a2dfda5e9300d4"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
