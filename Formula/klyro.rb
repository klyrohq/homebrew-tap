class Klyro < Formula
  desc "Klyro command-line interface"
  homepage "https://klyro.security"
  version "1.9.0"

  on_macos do
    on_arm do
      url "https://get.klyro.security/cli/v1.9.0/klyro_v1.9.0_darwin_arm64"
      sha256 "f92e00fb1db94850da61ba195a7721a12b5a935c8172f4c86bd563412d05c45d"

      def install
        bin.install "klyro_v1.9.0_darwin_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.9.0/klyro_v1.9.0_darwin_amd64"
      sha256 "d33d3dc2ed80fe63df77d5005133d07992294af88fbedf751f5ee12d5d87400c"

      def install
        bin.install "klyro_v1.9.0_darwin_amd64" => "klyro"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://get.klyro.security/cli/v1.9.0/klyro_v1.9.0_linux_arm64"
      sha256 "223a9ad5dde551fbc8a7446620669c51ff9d96213692c63a674779524d72029d"

      def install
        bin.install "klyro_v1.9.0_linux_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.9.0/klyro_v1.9.0_linux_amd64"
      sha256 "2aa9f913baa7d2dc1b66870193fae78cd4785e91f1a1c831ab0e1cc432dcdfb6"

      def install
        bin.install "klyro_v1.9.0_linux_amd64" => "klyro"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klyro version")
  end
end
