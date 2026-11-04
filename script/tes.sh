#!/bin/sh
# Uji konektivitas dari sisi kanan (Navi / host A12-A14) ke semua client.
# Cara pakai: paste seluruh isi file ini di console node (Yasuo, Miho, Kuma, Taro, Alice, atau Reika).
OK=0; FAIL=0
for t in \
  Yasuo=10.26.17.2 \
  Miho=10.26.17.3 \
  Kuma=10.26.17.4 \
  Taro=10.26.18.2 \
  Alice=10.26.16.2 \
  Reika=10.26.16.3 \
  Karl=10.26.0.2 \
  Lin=10.26.0.3 \
  Omnipresence=10.26.4.2 \
  Denpa=10.26.4.3 \
  Masayuki=10.26.8.2 \
  Juri=10.26.10.2 \
  Akashic=10.26.10.66 \
  JJ=10.26.24.2 \
  MyuMyu=10.26.24.3 \
  Lain=10.26.21.130 \
  Mika=10.26.21.131 \
  Semi=10.26.22.2 \
  Firi=10.26.22.34 \
  Chiha=10.26.21.194 \
  Hodgeson=10.26.21.195 \
  Lilith=10.26.21.2 \
  Specter=10.26.21.3 \
  Collective=10.26.20.2 \
  Ghost=10.26.20.3
do
  n=${t%%=*}; a=${t##*=}
  if ping -c 2 -W 2 $a >/dev/null 2>&1; then echo "OK    $n ($a)"; OK=$((OK+1))
  else echo "GAGAL $n ($a)"; FAIL=$((FAIL+1)); fi
done
echo "--- Berhasil: $OK  Gagal: $FAIL"
