class Klyro < Formula
  desc "Klyro command-line interface"
  homepage "https://klyro.security"
  version "1.8.0"

  on_macos do
    on_arm do
      url "https://get.klyro.security/cli/v1.8.0/klyro_v1.8.0_darwin_arm64"
      sha256 "611b5ae0a6e3de09c76ede0073cf79c58875008fd6c73f9764d08c08729192fe"

      def install
        bin.install "klyro_v1.8.0_darwin_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.8.0/klyro_v1.8.0_darwin_amd64"
      sha256 "e0f73e5ae5e35e2b1fd1635bcda6f19281c88202551c8ee94d023ad273c2b5eb"

      def install
        bin.install "klyro_v1.8.0_darwin_amd64" => "klyro"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://get.klyro.security/cli/v1.8.0/klyro_v1.8.0_linux_arm64"
      sha256 "22b477fc2332d90a824653b7fa49560b67241e1a24497123577206ba79c80240"

      def install
        bin.install "klyro_v1.8.0_linux_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.8.0/klyro_v1.8.0_linux_amd64"
      sha256 "2bedf25bf329df2845f1f9553eae8a53a89613536247b166434edb58c503b3ca"

      def install
        bin.install "klyro_v1.8.0_linux_amd64" => "klyro"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klyro version")
  end
end
