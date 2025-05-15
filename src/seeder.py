import mysql.connector
from faker import Faker
import random
from datetime import datetime, timedelta

DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',         # Ganti dengan user MariaDB Anda
    'password': 'chris15', # Ganti dengan password MariaDB Anda
    'database': 'Halobot'
}

fake = Faker('id_ID') # Menggunakan lokal Indonesia untuk data yang lebih relevan

def connect_db():
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        return conn
    except mysql.connector.Error as err:
        print(f"Error connecting to MariaDB: {err}")
        return None

def seed_pengguna(cursor, count=20):
    emails = []
    for _ in range(count):
        email = fake.unique.email()
        kata_sandi = fake.password(length=12)
        nama_lengkap = fake.name()
        tanggal_lahir = fake.date_of_birth(minimum_age=18, maximum_age=70)
        usia = (datetime.now().date() - tanggal_lahir).days // 365
        try:
            cursor.execute("""
                INSERT INTO pengguna (email, kata_sandi, nama_lengkap, tanggal_lahir, usia)
                VALUES (%s, %s, %s, %s, %s)
            """, (email, kata_sandi, nama_lengkap, tanggal_lahir, usia))
            emails.append(email)
        except mysql.connector.Error as err:
            print(f"Error seeding pengguna: {err} for email {email}")
    return emails

def seed_pasien(cursor, pengguna_emails, count=10):
    pasien_data = []
    if not pengguna_emails:
        return pasien_data
    
    selected_emails = random.sample(pengguna_emails, min(count, len(pengguna_emails)))
    
    for email in selected_emails:
        firmware_baymin = fake.unique.random_int(min=10000, max=99999)
        try:
            cursor.execute("""
                INSERT INTO pasien (email, firmware_baymin)
                VALUES (%s, %s)
            """, (email, firmware_baymin))
            pasien_data.append({'email': email, 'firmware_baymin': firmware_baymin})
        except mysql.connector.Error as err:
            print(f"Error seeding pasien: {err} for email {email}")
    return pasien_data

def seed_alamat_pasien(cursor, pasien_emails, count=50):
    if not pasien_emails:
        return
    
    # make sure semua pasien memiliki alamat
    for email in pasien_emails:
        provinsi = fake.state()
        kota = fake.city()
        jalan = fake.street_address()
        try:
            cursor.execute("""
                INSERT INTO alamat_pasien (email, provinsi, kota, jalan)
                VALUES (%s, %s, %s, %s)
            """, (email, provinsi, kota, jalan))
        except mysql.connector.Error as err:
            print(f"Error seeding alamat_pasien: {err} for email {email}")

    # tambahkan alamat extra untuk pasien yang sudah ada
    for _ in range(count - len(pasien_emails)):
        provinsi = fake.state()
        kota = fake.city()
        jalan = fake.street_address()
        email = random.choice(pasien_emails)
        try:
            cursor.execute("""
                INSERT INTO alamat_pasien (email, provinsi, kota, jalan)
                VALUES (%s, %s, %s, %s)
            """, (email, provinsi, kota, jalan))
        except mysql.connector.Error as err:
            print(f"Error seeding alamat_pasien: {err} for email {email}")

def seed_rumah_sakit(cursor, count=20):
    rumah_sakit_ids = []
    for i in range(count):
        id_rumah_sakit = fake.unique.random_int(min=1, max=1000) 
        nama_rumah_sakit = f"RS {fake.company_suffix()} {fake.city()}"
        provinsi = fake.state()
        kota = fake.city()
        jalan = fake.street_address()
        try:
            cursor.execute("""
                INSERT INTO rumah_sakit (id_rumah_sakit, nama_rumah_sakit, provinsi, kota, jalan)
                VALUES (%s, %s, %s, %s, %s)
            """, (id_rumah_sakit, nama_rumah_sakit, provinsi, kota, jalan))
            rumah_sakit_ids.append(id_rumah_sakit)
        except mysql.connector.Error as err:
            print(f"Error seeding rumah_sakit: {err} for id {id_rumah_sakit}")
    return rumah_sakit_ids

def seed_telepon_rumah_sakit(cursor, rumah_sakit_ids, count=50):
    if not rumah_sakit_ids:
        return
    
    # make sure all rumah sakit have at least one telepon
    for rs_id in rumah_sakit_ids:
        no_telepon = fake.unique.phone_number()
        try:
            cursor.execute("""
                INSERT INTO telepon_rumah_sakit (id_rumah_sakit, no_telepon)
                VALUES (%s, %s)
            """, (rs_id, no_telepon))
        except mysql.connector.Error as err:
            print(f"Error seeding telepon_rumah_sakit: {err} for rs_id {rs_id}")

    for _ in range(count - len(rumah_sakit_ids)):
        no_telepon = fake.unique.phone_number()
        try:
            cursor.execute("""
                INSERT INTO telepon_rumah_sakit (id_rumah_sakit, no_telepon)
                VALUES (%s, %s)
            """, (rs_id, no_telepon))
        except mysql.connector.Error as err:
            print(f"Error seeding telepon_rumah_sakit: {err} for rs_id {rs_id}")


def seed_departemen(cursor, rumah_sakit_ids, count_per_rs=2, count=50):
    departemen_data = []
    if not rumah_sakit_ids:
        return departemen_data
    
    nama_departemen_options = ["Kardiologi", "Neurologi", "Umum", "Anak", "Bedah", "Gigi", "Kulit"]
    for rs_id in rumah_sakit_ids:
        selected_options = random.sample(nama_departemen_options, min(count_per_rs, len(nama_departemen_options)))
        for nama_dept in selected_options:
            gedung = f"Gedung {random.choice(['A', 'B', 'C', 'Utama', 'Timur'])}"
            try:
                cursor.execute("""
                    INSERT INTO departemen (nama_departemen, id_rumah_sakit, gedung)
                    VALUES (%s, %s, %s)
                """, (nama_dept, rs_id, gedung))
                departemen_data.append({'nama_departemen': nama_dept, 'id_rumah_sakit': rs_id})
            except mysql.connector.Error as err:
                print(f"Error seeding departemen: {err} for rs_id {rs_id}, dept {nama_dept}")

    for _ in range(count - len(rumah_sakit_ids)):
        available_deparatemen = []

        while len(available_deparatemen) < 1:
            rs_id = random.choice(rumah_sakit_ids)

            for dept in nama_departemen_options:
                if dept not in [d['nama_departemen'] for d in departemen_data if d['id_rumah_sakit'] == rs_id]:
                    available_deparatemen.append(dept)

        nama_dept = random.choice(available_deparatemen)
        gedung = f"Gedung {random.choice(['A', 'B', 'C', 'Utama', 'Timur'])}"
        try:
            cursor.execute("""
                INSERT INTO departemen (nama_departemen, id_rumah_sakit, gedung)
                VALUES (%s, %s, %s)
            """, (nama_dept, rs_id, gedung))
            departemen_data.append({'nama_departemen': nama_dept, 'id_rumah_sakit': rs_id})
        except mysql.connector.Error as err:
            print(f"Error seeding departemen: {err} for rs_id {rs_id}, dept {nama_dept}")

    return departemen_data

def seed_tenaga_medis(cursor, pengguna_emails, departemen_data):
    tenaga_medis_emails = []
    if not pengguna_emails or not departemen_data:
        return tenaga_medis_emails

    # selected_emails = random.sample(pengguna_emails, min(count, len(pengguna_emails)))
    selected_emails = pengguna_emails

    for email in selected_emails:
        dept = random.choice(departemen_data)
        NIKes = fake.unique.ean(length=13) # NIKes as a unique number
        jenis_profesi = random.choice(["Dokter Spesialis", "Dokter Umum", "Perawat", "Bidan"])
        try:
            cursor.execute("""
                INSERT INTO tenaga_medis (email, nama_departemen, id_rumah_sakit, NIKes, jenis_profesi)
                VALUES (%s, %s, %s, %s, %s)
            """, (email, dept['nama_departemen'], dept['id_rumah_sakit'], NIKes, jenis_profesi))
            tenaga_medis_emails.append(email)
        except mysql.connector.Error as err:
            print(f"Error seeding tenaga_medis: {err} for email {email}")
    return tenaga_medis_emails

def seed_janji_temu(cursor, rumah_sakit_ids, count=50):
    janji_temu_data = []
    if not rumah_sakit_ids:
        return janji_temu_data
    
    for _ in range(count):
        id_rumah_sakit = random.choice(rumah_sakit_ids)
        waktu_pelaksanaan = fake.date_time_between(start_date="-1M", end_date="+1M")
        alasan = fake.sentence(nb_words=10)
        try:
            cursor.execute("""
                INSERT INTO janji_temu (id_rumah_sakit, waktu_pelaksanaan, alasan)
                VALUES (%s, %s, %s)
            """, (id_rumah_sakit, waktu_pelaksanaan, alasan))
            id_janji_temu = cursor.lastrowid # MariaDB returns the AUTO_INCREMENT part
            if id_janji_temu:
                 janji_temu_data.append({'id_janji_temu': id_janji_temu, 'id_rumah_sakit': id_rumah_sakit})
        except mysql.connector.Error as err:
            print(f"Error seeding janji_temu: {err}")
    return janji_temu_data

def seed_melakukan_janji(cursor, pasien_emails, tenaga_medis_emails, janji_temu_data, count=150):
    if not pasien_emails or not tenaga_medis_emails or not janji_temu_data:
        return
    
    for _ in range(min(count, len(janji_temu_data))):
        email_pasien = random.choice(pasien_emails)
        email_tenaga_medis = random.choice(tenaga_medis_emails)
        janji = random.choice(janji_temu_data)
        try:
            cursor.execute("""
                INSERT INTO melakukan_janji (email_pasien, id_janji_temu, email_tenaga_medis, id_rumah_sakit)
                VALUES (%s, %s, %s, %s)
            """, (email_pasien, janji['id_janji_temu'], email_tenaga_medis, janji['id_rumah_sakit']))
        except mysql.connector.Error as err:
            # Handle potential duplicate PKs by skipping
            if err.errno == 1062: # Duplicate entry
                print(f"Skipping duplicate melakukan_janji for PK ({email_pasien}, {janji['id_janji_temu']}, {email_tenaga_medis}, {janji['id_rumah_sakit']})")
            else:
                print(f"Error seeding melakukan_janji: {err}")


def seed_layanan_medis(cursor, rumah_sakit_ids, count_per_rs=2, count = 50):
    layanan_medis_data = []
    if not rumah_sakit_ids:
        return layanan_medis_data
    
    nama_layanan_options = ['vaksinasi', 'fisioterapi']
    id_layanan_counter = 1
    for rs_id in rumah_sakit_ids:
        selected_options = random.sample(nama_layanan_options, min(count_per_rs, len(nama_layanan_options)))
        for nama_lyn in selected_options:
            id_layanan = id_layanan_counter
            id_layanan_counter +=1
            try:
                cursor.execute("""
                    INSERT INTO layanan_medis (id_rumah_sakit, id_layanan, nama_layanan)
                    VALUES (%s, %s, %s)
                """, (rs_id, id_layanan, nama_lyn))
                layanan_medis_data.append({'id_rumah_sakit': rs_id, 'id_layanan': id_layanan, 'nama_layanan': nama_lyn})
            except mysql.connector.Error as err:
                print(f"Error seeding layanan_medis: {err} for rs_id {rs_id}, layanan {id_layanan}")
    
    for _ in range(count - len(rumah_sakit_ids)*count_per_rs):
        rs_id = random.choice(rumah_sakit_ids)
        nama_lyn = random.choice(nama_layanan_options)
        id_layanan = id_layanan_counter
        id_layanan_counter +=1
        try:
            cursor.execute("""
                INSERT INTO layanan_medis (id_rumah_sakit, id_layanan, nama_layanan)
                VALUES (%s, %s, %s)
            """, (rs_id, id_layanan, nama_lyn))
            layanan_medis_data.append({'id_rumah_sakit': rs_id, 'id_layanan': id_layanan, 'nama_layanan': nama_lyn})
        except mysql.connector.Error as err:
            print(f"Error seeding layanan_medis: {err} for rs_id {rs_id}, layanan {id_layanan}")

    return layanan_medis_data

def seed_log_layanan(cursor, pasien_data, count=50):
    if not pasien_data:
        return
    
    for _ in range(count):
        waktu_pengguna = fake.date_time_this_year()
        jenis_tindakan = fake.bs()
        pasien = random.choice(pasien_data)
        try:
            cursor.execute("""
                INSERT INTO log_layanan (firmware_baymin, waktu_pengguna, jenis_tindakan)
                VALUES (%s, %s, %s)
            """, (pasien['firmware_baymin'], waktu_pengguna, jenis_tindakan))
        except mysql.connector.Error as err:
            if err.errno == 1062: 
                print(f"Skipping duplicate log_layanan for firmware {pasien['firmware_baymin']} at {waktu_pengguna}")
            else:
                print(f"Error seeding log_layanan: {err} for firmware {pasien['firmware_baymin']}")


def seed_obat(cursor, count=20):
    obat_ids = []
    label_options = ['analgesik', 'antibiotik', 'obat herbal']
    for i in range(count):
        id_obat = fake.unique.random_int(min=1, max=10000) 
        label = random.choice(label_options)
        try:
            cursor.execute("""
                INSERT INTO obat (id_obat, label)
                VALUES (%s, %s)
            """, (id_obat, label))
            obat_ids.append(id_obat)
        except mysql.connector.Error as err:
            print(f"Error seeding obat: {err} for id {id_obat}")
    return obat_ids

def seed_pemesanan_layanan(cursor, layanan_medis_data, pasien_emails, count=100):
    if not layanan_medis_data or not pasien_emails:
        return

    status_options = ['belum dibayar', 'dijadwalkan', 'sedang berlangsung', 'selesai', 'dibatalkan']
    jenis_layanan_options = ['tes laboratorium', 'tes radiologi', 'konsultasi dokter', 'home care']
    for _ in range(count):
        layanan = random.choice(layanan_medis_data)
        email = random.choice(pasien_emails)
        jadwal_pelaksanaan = fake.date_between(start_date="today", end_date="+2M")
        status_pemesanan = random.choice(status_options)
        total_biaya = random.randint(50000, 1000000)
        jenis_layanan = random.choice(jenis_layanan_options)
        
        try:
            cursor.execute("""
                INSERT INTO pemesanan_layanan (id_rumah_sakit, id_layanan, email, jenis_layanan, jadwal_pelaksanaan, status_pemesanan, total_biaya)
                VALUES (%s, %s, %s, %s, %s, %s, %s)
            """, (layanan['id_rumah_sakit'], layanan['id_layanan'], email, jenis_layanan, jadwal_pelaksanaan, status_pemesanan, total_biaya))
            # id_pemesanan is AUTO_INCREMENT, part of composite PK
        except mysql.connector.Error as err:
            if err.errno == 1062:
                print(f"Skipping duplicate pemesanan_layanan.")
            else:
                print(f"Error seeding pemesanan_layanan: {err}")


def seed_pengeluaran_resep(cursor, janji_temu_data, count=50):
    pengeluaran_resep_data = []
    if not janji_temu_data:
        return pengeluaran_resep_data

    used_janji_temu = set()

    for _ in range(min(count, len(janji_temu_data))):
        janji = random.choice(janji_temu_data)
        janji_pk = (janji['id_janji_temu'], janji['id_rumah_sakit'])
        
        if janji_pk in used_janji_temu: # Ensure unique (id_janji_temu, id_rumah_sakit) for resep
            continue 
        used_janji_temu.add(janji_pk)

        id_resep = fake.unique.random_int(min=1, max=50000)
        try:
            cursor.execute("""
                INSERT INTO pengeluaran_resep (id_janji_temu, id_rumah_sakit, id_resep)
                VALUES (%s, %s, %s)
            """, (janji['id_janji_temu'], janji['id_rumah_sakit'], id_resep))
            pengeluaran_resep_data.append({'id_janji_temu': janji['id_janji_temu'], 
                                           'id_rumah_sakit': janji['id_rumah_sakit'], 
                                           'id_resep': id_resep})
        except mysql.connector.Error as err:
            print(f"Error seeding pengeluaran_resep: {err}")
    return pengeluaran_resep_data


def seed_resep_obat(cursor, obat_ids, pengeluaran_resep_data, count_per_resep=2, count = 100):
    if not obat_ids or not pengeluaran_resep_data:
        return
    
    for resep_info in pengeluaran_resep_data:
        for _ in range(count_per_resep):
            id_obat = random.choice(obat_ids)
            dosis = f"{random.randint(1,3)}x sehari {random.randint(1,2)} tablet"
            cara_pakai = random.choice(["Sebelum makan", "Sesudah makan", "Saat makan"])
            try:
                cursor.execute("""
                    INSERT INTO resep_obat (id_obat, id_resep, dosis, cara_pakai)
                    VALUES (%s, %s, %s, %s)
                """, (id_obat, resep_info['id_resep'], dosis, cara_pakai))
            except mysql.connector.Error as err:
                if err.errno == 1062: # Duplicate entry for (id_obat, id_resep)
                    print(f"Skipping duplicate resep_obat for obat {id_obat}, resep {resep_info['id_resep']}")
                else:
                    print(f"Error seeding resep_obat: {err}")

    for _ in range(count - len(pengeluaran_resep_data) * count_per_resep):

        while True:
            id_obat = random.choice(obat_ids)
            resep_info = random.choice(pengeluaran_resep_data)
            dosis = f"{random.randint(1,3)}x sehari {random.randint(1,2)} tablet"
            cara_pakai = random.choice(["Sebelum makan", "Sesudah makan", "Saat makan"])
            try:
                cursor.execute("""
                    INSERT INTO resep_obat (id_obat, id_resep, dosis, cara_pakai)
                    VALUES (%s, %s, %s, %s)
                """, (id_obat, resep_info['id_resep'], dosis, cara_pakai))
                break
            except mysql.connector.Error as err:
                if err.errno == 1062:   
                    print(f"Skipping duplicate resep_obat for obat {id_obat}, resep {resep_info['id_resep']}")
                else:
                    print(f"Error seeding resep_obat: {err}")


def seed_pemesanan_obat(cursor, pasien_emails, count=50):
    pemesanan_obat_pks = []
    if not pasien_emails:
        return pemesanan_obat_pks

    status_options = ['belum dibayar', 'dijadwalkan', 'sedang berlangsung', 'selesai', 'dibatalkan']
    for _ in range(count):
        while True:
            email = random.choice(pasien_emails)
            waktu_pemesanan = fake.date_time_this_month()
            alamat_pengiriman = fake.address().replace('\n', ', ')
            status_pemesanan = random.choice(status_options)
            total_biaya = random.randint(20000, 500000)
            try:
                cursor.execute("""
                    INSERT INTO pemesanan_obat (email, waktu_pemesanan, alamat_pengiriman, status_pemesanan, total_biaya)
                    VALUES (%s, %s, %s, %s, %s)
                """, (email, waktu_pemesanan, alamat_pengiriman, status_pemesanan, total_biaya))
                pemesanan_obat_pks.append({'email': email, 'waktu_pemesanan': waktu_pemesanan, 'alamat_pengiriman': alamat_pengiriman})
                break
            except mysql.connector.Error as err:
                if err.errno == 1062:
                    print(f"Skipping duplicate pemesanan_obat for PK ({email}, {waktu_pemesanan}, {alamat_pengiriman})")
                else:
                    print(f"Error seeding pemesanan_obat: {err}")
    return pemesanan_obat_pks

def seed_pemesanan_obat_obat(cursor, pemesanan_obat_pks, obat_ids, count_per_pemesanan=2, count=100):
    if not pemesanan_obat_pks or not obat_ids:
        return

    for pk_info in pemesanan_obat_pks:
        for _ in range(count_per_pemesanan):
            id_obat = random.choice(obat_ids)
            try:
                cursor.execute("""
                    INSERT INTO pemesanan_obat_obat (email, waktu_pemesanan, alamat_pengiriman, id_obat)
                    VALUES (%s, %s, %s, %s)
                """, (pk_info['email'], pk_info['waktu_pemesanan'], pk_info['alamat_pengiriman'], id_obat))
            except mysql.connector.Error as err:
                if err.errno == 1062:
                    print(f"Skipping duplicate pemesanan_obat_obat for PK ({pk_info['email']}, {pk_info['waktu_pemesanan']}, {pk_info['alamat_pengiriman']}, {id_obat})")
                else:
                    print(f"Error seeding pemesanan_obat_obat: {err}")

    for _ in range(count - len(pemesanan_obat_pks) * count_per_pemesanan):
        id_obat = random.choice(obat_ids)
        pk_info = random.choice(pemesanan_obat_pks)
        try:
            cursor.execute("""
                INSERT INTO pemesanan_obat_obat (email, waktu_pemesanan, alamat_pengiriman, id_obat)
                VALUES (%s, %s, %s, %s)
            """, (pk_info['email'], pk_info['waktu_pemesanan'], pk_info['alamat_pengiriman'], id_obat))
        except mysql.connector.Error as err:
            if err.errno == 1062:
                print(f"Skipping duplicate pemesanan_obat_obat for PK ({pk_info['email']}, {pk_info['waktu_pemesanan']}, {pk_info['alamat_pengiriman']}, {id_obat})")
            else:
                print(f"Error seeding pemesanan_obat_obat: {err}")


def seed_telepon_pengguna(cursor, pengguna_emails, count = 50):
    if not pengguna_emails:
        return
    for email in pengguna_emails:
        no_telepon = fake.unique.phone_number()
        try:
            cursor.execute("""
                INSERT INTO telepon_pengguna (email, no_telepon)
                VALUES (%s, %s)
            """, (email, no_telepon))
        except mysql.connector.Error as err:
            if err.errno == 1062:
                print(f"Skipping duplicate telepon_pengguna for PK ({email}, {no_telepon})")
            else:
                print(f"Error seeding telepon_pengguna: {err} for email {email}")
    
    for _ in range(count - len(pengguna_emails)):
        email = random.choice(pengguna_emails)
        no_telepon = fake.unique.phone_number()
        try:
            cursor.execute("""
                INSERT INTO telepon_pengguna (email, no_telepon)
                VALUES (%s, %s)
            """, (email, no_telepon))
        except mysql.connector.Error as err:
            if err.errno == 1062:
                print(f"Skipping duplicate telepon_pengguna for PK ({email}, {no_telepon})")
            else:
                print(f"Error seeding telepon_pengguna: {err} for email {email}")

if __name__ == '__main__':
    conn = connect_db()
    if conn:
        cursor = conn.cursor()
        
        print("Seeding pengguna...")
        all_pengguna_emails = seed_pengguna(cursor)
        
        print("Seeding pasien...")
        all_pasien_data = seed_pasien(cursor, all_pengguna_emails)
        pasien_emails_only = [p['email'] for p in all_pasien_data]

        print("Seeding alamat_pasien...")
        seed_alamat_pasien(cursor, pasien_emails_only)
        
        print("Seeding rumah_sakit...")
        all_rumah_sakit_ids = seed_rumah_sakit(cursor)
        
        print("Seeding telepon_rumah_sakit...")
        seed_telepon_rumah_sakit(cursor, all_rumah_sakit_ids)
        
        print("Seeding departemen...")
        all_departemen_data = seed_departemen(cursor, all_rumah_sakit_ids)
        
        print("Seeding tenaga_medis...")
        # Filter pengguna emails to exclude those already in pasien
        non_pasien_emails = [email for email in all_pengguna_emails if email not in pasien_emails_only]
        all_tenaga_medis_emails = seed_tenaga_medis(cursor, non_pasien_emails, all_departemen_data)
        
        print("Seeding janji_temu...")
        all_janji_temu_data = seed_janji_temu(cursor, all_rumah_sakit_ids)
        
        print("Seeding melakukan_janji...")
        if pasien_emails_only and all_tenaga_medis_emails and all_janji_temu_data:
             seed_melakukan_janji(cursor, pasien_emails_only, all_tenaga_medis_emails, all_janji_temu_data)
        
        print("Seeding layanan_medis...")
        all_layanan_medis_data = seed_layanan_medis(cursor, all_rumah_sakit_ids)
        
        print("Seeding log_layanan...")
        seed_log_layanan(cursor, all_pasien_data)
        
        print("Seeding obat...")
        all_obat_ids = seed_obat(cursor)
        
        print("Seeding pemesanan_layanan...")
        if all_layanan_medis_data and pasien_emails_only:
            seed_pemesanan_layanan(cursor, all_layanan_medis_data, pasien_emails_only)

        print("Seeding pengeluaran_resep...")
        all_pengeluaran_resep_data = seed_pengeluaran_resep(cursor, all_janji_temu_data)

        print("Seeding resep_obat...")
        if all_obat_ids and all_pengeluaran_resep_data:
            seed_resep_obat(cursor, all_obat_ids, all_pengeluaran_resep_data)

        print("Seeding pemesanan_obat...")
        all_pemesanan_obat_pks = seed_pemesanan_obat(cursor, pasien_emails_only)

        print("Seeding pemesanan_obat_obat...")
        if all_pemesanan_obat_pks and all_obat_ids:
            seed_pemesanan_obat_obat(cursor, all_pemesanan_obat_pks, all_obat_ids)

        print("Seeding telepon_pengguna...")
        seed_telepon_pengguna(cursor, all_pengguna_emails)

        conn.commit()
        print("Database seeded successfully.")
        cursor.close()
        conn.close()
    else:
        print("Could not connect to database. Seeding aborted.")

