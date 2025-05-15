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
atau untuk database yang telah diseed
```bash
mysql -u root -p < "Milestone2_BNI_The Garuda Pancasila Spirit of Brr Brr Patapim_seeded.sql"
```

3. buka mariadb (ini klo pake root dan ga nambah password)
```bash
mysql -u root -p
```
4. enjoy

# How to seed
1. Buat virtual environment
```bash
python3 -m venv venv
```
2. Aktifkan virtual environment (linux)
```bash
source venv/bin/activate
```
3. Install requirements
```bash
pip install -r requirements.txt
```
4. Run the seed script
```bash
python src/seeder.py
```