# DOKUMENTASI JARKOM PRAKTIKUM 3

## ANGGOTA

| Nama                        | NRP        |
| --------------------------- | ---------- |
| Athalla Barka Fadhil        | 5027231018 |
| Jody Hezekiah Tanasa Sagala | 5027221050 |

## TOPOLOGY
<img width="1061" alt="image" src="https://github.com/user-attachments/assets/6ba970b2-eb2a-422e-9716-7a7d702838ad">


## PARADIS

```
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
  address 10.72.1.1
  netmask 255.255.255.0

auto eth2
iface eth2 inet static
  address 10.72.2.1
  netmask 255.255.255.0

auto eth3
iface eth3 inet static
  address 10.72.3.1
  netmask 255.255.255.0

auto eth4
iface eth4 inet static
  address 10.72.4.1
  netmask 255.255.255.0

up iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.72.0.0/16
```

## SETUP DHCP CLIENT (ERWIN dan ZEKE)

```
auto eth0
iface eth0 inet dhcp
```

## SETUP NODES LAINNYA

```
auto eth0
iface eth0 inet static
  address 10.72.[SESUAIKAN].[TOPOLOGY]
  netmask 255.255.255.0
  gateway 10.72.[SESUAIKAN].[TOPOLOGY]

up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

Untuk setup setiap server, silahkan liat pada directory files, untuk penggunaannya mudah saja, tinggal copy semua files yang berada pada folder masing-masing, lalu paste pada /root lalu saat sudah masuk web consolenya di jalankan dengan `bash setup.sh`
