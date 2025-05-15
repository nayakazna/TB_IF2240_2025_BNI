# Prerequisites
(mending pake linux seriusan)
1. instal mysql
2. instal mariadb
# Usage
0. Pastiin service mariadb jalan, ini buat jalanin
```bash
sudo systemctl start mariadb
```
1. ke src
```bash
cd src
```
2. load dumpnya
```bash
mysql -u root -p < "Milestone2_BNI_The Garuda Pancasila Spirit of Brr Brr Patapim.sql"
```
3. buka mariadb (ini klo pake root dan ga nambah password)
```bash
mysql -u root -p
```
4. enjoy