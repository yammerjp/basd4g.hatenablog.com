---
title: VirtualBoxでUSB機器を認識させる
date: 2020/03/12 17:08
tags:
---

## 前提

VirtualBoxは、ホストマシンにつながったUSB機器をゲストOSで利用できる。
また、ホスト側でドライバを用意しなくても、ゲストOS側でドライバを導入すれば利用できる。

ただし、以下の手順を踏んでUSBデバイスを有効化する必要がある。

ここでは、[USBシリアル変換ケーブル](https://www.amazon.co.jp/gp/product/B007SI18VW/ref=ppx_yo_dt_b_asin_title_o06_s00?ie=UTF8&psc=1)を使ったシリアル通信機器を認識させることを目的として作業する。

- ホストOS: macOS Mojave 10.14.6
- VirtualBox: 6.0.14 r133895 (Qt5.6.3)
- ゲストOS: [bento/ubuntu-18.04](https://app.vagrantup.com/bento/boxes/ubuntu-18.04)

## 作業

### 1. Extension Packの導入

(2020/03/24追記: homebrew caskにて導入できることを確認しました。`$ brew cask install virtualbox-extension-pack`)

[Download VirtualBox](https://www.virtualbox.org/wiki/Downloads)からOracle VM VirtualBox Extension Packをダウンロードする。

最新版は、VirtualBox x.x.x Oracle VM VirtualBox Extension Packの1行下のAll supported platformsがリンクになっている。
バージョンは自分のPCにインストールされているVirtualBoxに合わせること。
違うバージョンのものはインストールに失敗する。

[VirtualBox6.0のDownloadページ](https://www.virtualbox.org/wiki/Download_Old_Builds_6_0)や[VirtualBox5.2のDownloadページ](https://www.virtualbox.org/wiki/Download_Old_Builds_5_2)から、各バージョンのExtension Packがダウンロードできる。
今回は6.0.14用のExtension Packをダウンロードした。

ダウンロードしたファイルをダブルクリックすると、VirtualBoxのウィンドウが立ち上がりインストールが始まる。

### 2. USBデバイスフィルターに機器を追加

Oracle VM VirtualBoxマネージャーを開き、目的のVMにカーソルを合わせて右クリック -> 設定 を開く。

![Oracle VM VirtualBoxマネージャー](/img/oracle-vm-virtualbox-manager.png)

ポート -> USB を開く

USBコントローラを有効化にチェックを入れる。

USBデバイスフィルター -> 右横の+アイコンをクリック -> 目的のデバイスを選択する。

![USBデバイスフィルター](usb-device-filter.png)

### 3. VMを起動(再起動)する
