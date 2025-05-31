import mysql.connector
from faker import Faker
import random
from datetime import datetime, timedelta

DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': 'chris15',
    'database': 'Halobot'
}

fake = Faker('id_ID')

def connect_db():
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        return conn
    except mysql.connector.Error as err:
        print(f"Error connecting to MariaDB: {err}")
        return None

def seed_pengguna(cursor, count=150):
    emails = []
    for _ in range(count):
        email = fake.unique.email()
        kata_sandi = fake.password(length=12)
        nama_lengkap = fake.name()
        tanggal_lahir = fake.date_of_birth(minimum_age=10, maximum_age=80) # Disesuaikan dengan kebutuhan usia pasien
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

def seed_pasien(cursor, pengguna_emails, count=50):
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

def seed_alamat_pasien(cursor, pasien_emails, count=100):
    # Diubah untuk me-return alamat yang di-seed
    inserted_addresses = []
    if not pasien_emails:
        return inserted_addresses # Kembalikan list kosong jika tidak ada pasien_emails
    
    for email in pasien_emails:
        provinsi = fake.state()
        kota = fake.city()
        jalan = fake.street_address()
        try:
            cursor.execute("""
                INSERT INTO alamat_pasien (email, provinsi, kota, jalan)
                VALUES (%s, %s, %s, %s)
            """, (email, provinsi, kota, jalan))
            inserted_addresses.append({'email': email, 'provinsi': provinsi, 'kota': kota, 'jalan': jalan})
        except mysql.connector.Error as err: # PK: (email, provinsi, kota, jalan)
            if err.errno == 1062:
                 print(f"Skipping duplicate alamat_pasien for PK ({email}, {provinsi}, {kota}, {jalan})")
            else:
                print(f"Error seeding alamat_pasien: {err} for email {email}")

    # tambahkan alamat extra untuk pasien yang sudah ada
    # Pastikan count > len(pasien_emails) dan pasien_emails tidak kosong
    if count > len(pasien_emails) and pasien_emails:
        for _ in range(count - len(pasien_emails)):
            provinsi = fake.state()
            kota = fake.city()
            jalan = fake.street_address()
            selected_email = random.choice(pasien_emails) # Pilih email acak dari pasien yang ada
            try:
                cursor.execute("""
                    INSERT INTO alamat_pasien (email, provinsi, kota, jalan)
                    VALUES (%s, %s, %s, %s)
                """, (selected_email, provinsi, kota, jalan))
                inserted_addresses.append({'email': selected_email, 'provinsi': provinsi, 'kota': kota, 'jalan': jalan})
            except mysql.connector.Error as err:
                if err.errno == 1062:
                    print(f"Skipping duplicate alamat_pasien (extra) for PK ({selected_email}, {provinsi}, {kota}, {jalan})")
                else:
                    print(f"Error seeding alamat_pasien (extra): {err} for email {selected_email}")
    return inserted_addresses


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
    
    inserted_count = 0
    existing_no_telepon = set()

    for rs_id in rumah_sakit_ids:
        if inserted_count >= count: break
        no_telepon = fake.unique.phone_number()
        while no_telepon in existing_no_telepon: # Pastikan no_telepon unik global
            no_telepon = fake.unique.phone_number()
        try:
            cursor.execute("""
                INSERT INTO telepon_rumah_sakit (id_rumah_sakit, no_telepon)
                VALUES (%s, %s)
            """, (rs_id, no_telepon))
            existing_no_telepon.add(no_telepon) # Tambahkan ke set setelah berhasil
            inserted_count +=1
        except mysql.connector.Error as err:
            if err.errno == 1062: # Duplicate PK (no_telepon)
                print(f"Skipping duplicate telepon_rumah_sakit for no_telepon {no_telepon}")
            else:
                print(f"Error seeding telepon_rumah_sakit: {err} for rs_id {rs_id}")
        if inserted_count >= count: break # Cek lagi setelah insert

    # Tambah telepon ekstra jika count belum tercapai
    if inserted_count < count and rumah_sakit_ids: # Pastikan rumah_sakit_ids tidak kosong
        for _ in range(count - inserted_count):
            rs_id_choice = random.choice(rumah_sakit_ids) # Pilih rs_id secara acak
            no_telepon = fake.unique.phone_number()
            while no_telepon in existing_no_telepon:
                no_telepon = fake.unique.phone_number()
            try:
                cursor.execute("""
                    INSERT INTO telepon_rumah_sakit (id_rumah_sakit, no_telepon)
                    VALUES (%s, %s)
                """, (rs_id_choice, no_telepon))
                existing_no_telepon.add(no_telepon)
            except mysql.connector.Error as err:
                if err.errno == 1062: # Duplicate PK (no_telepon)
                    print(f"Skipping duplicate telepon_rumah_sakit (extra) for no_telepon {no_telepon}")
                else:
                    print(f"Error seeding telepon_rumah_sakit (extra): {err} for rs_id {rs_id_choice}")


def seed_departemen(cursor, rumah_sakit_ids, count_per_rs=2, count=50):
    departemen_data = []
    if not rumah_sakit_ids:
        return departemen_data
    
    nama_departemen_options = ["Kardiologi", "Neurologi", "Umum", "Anak", "Bedah", "Gigi", "Kulit"]
    for rs_id in rumah_sakit_ids:
        selected_options = random.sample(nama_departemen_options, count_per_rs)
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

    for _ in range(count - len(rumah_sakit_ids)*count_per_rs):
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


def seed_tenaga_medis(cursor, pengguna_emails, departemen_data, pasien_emails_list): # pasien_emails_list ditambahkan
    # Diubah untuk me-return list of dicts agar bisa filter by RS di melakukan_janji
    tenaga_medis_data_list = []
    if not pengguna_emails or not departemen_data:
        return tenaga_medis_data_list

    non_pasien_emails = [email for email in pengguna_emails if email not in pasien_emails_list]

    for email in non_pasien_emails:
        if not departemen_data: break
        dept = random.choice(departemen_data)
        
        NIKes = fake.unique.ean(length=13)
        jenis_profesi = random.choice(["Dokter", "Perawat"])
        try:
            cursor.execute("""
                INSERT INTO tenaga_medis (email, nama_departemen, id_rumah_sakit, NIKes, jenis_profesi)
                VALUES (%s, %s, %s, %s, %s)
            """, (email, dept['nama_departemen'], dept['id_rumah_sakit'], NIKes, jenis_profesi))
            tenaga_medis_data_list.append({
                'email': email, 
                'NIKes': NIKes, 
                'nama_departemen': dept['nama_departemen'], 
                'id_rumah_sakit': dept['id_rumah_sakit'] 
            })
        except mysql.connector.Error as err:
            if err.errno == 1062:
                print(f"Skipping duplicate tenaga_medis for PK ({email}, {NIKes}) or unique NIKes {NIKes}")
            else:
                print(f"Error seeding tenaga_medis: {err} for email {email}")
    return tenaga_medis_data_list


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
            id_janji_temu = cursor.lastrowid 
            if id_janji_temu:
                 janji_temu_data.append({'id_janji_temu': id_janji_temu, 'id_rumah_sakit': id_rumah_sakit})
        except mysql.connector.Error as err:
            print(f"Error seeding janji_temu: {err}")
    return janji_temu_data

def seed_melakukan_janji(cursor, pasien_emails, tenaga_medis_data_list, janji_temu_data, count=150):
    if not pasien_emails or not tenaga_medis_data_list or not janji_temu_data:
        return
    
    inserted_count = 0
    attempts = 0
    existing_pks = set()

    while inserted_count < count:
        attempts += 1
        if not janji_temu_data or not pasien_emails or not tenaga_medis_data_list: break

        email_pasien_choice = random.choice(pasien_emails)
        janji_choice = random.choice(janji_temu_data) # janji_choice is {'id_janji_temu': ..., 'id_rumah_sakit': ...}
        
        possible_tm_for_janji_rs = [tm for tm in tenaga_medis_data_list if tm['id_rumah_sakit'] == janji_choice['id_rumah_sakit']]
        if not possible_tm_for_janji_rs:
            continue 
        
        tenaga_medis_info = random.choice(possible_tm_for_janji_rs) # tenaga_medis_info is a dict
        email_tenaga_medis_choice = tenaga_medis_info['email']
        
        pk_candidate = (email_pasien_choice, janji_choice['id_janji_temu'], janji_choice['id_rumah_sakit'])

        if pk_candidate in existing_pks:
            continue

        try:
            cursor.execute("""
                INSERT INTO melakukan_janji (email_pasien, id_janji_temu, email_tenaga_medis, id_rumah_sakit)
                VALUES (%s, %s, %s, %s)
            """, (pk_candidate[0], pk_candidate[1], email_tenaga_medis_choice, pk_candidate[2]))
            existing_pks.add(pk_candidate)
            inserted_count += 1
        except mysql.connector.Error as err:
            if err.errno == 1062:
                print(f"Skipping duplicate melakukan_janji for PK {pk_candidate}")
            else:
                print(f"Error seeding melakukan_janji: {err} for PK {pk_candidate}")
        if inserted_count >= count: break
            
    if inserted_count < count:
         print(f"Warning: Hanya berhasil insert {inserted_count} dari {count} melakukan_janji.")


def seed_layanan_medis(cursor, rumah_sakit_ids, count_per_rs=2, count = 50):
    layanan_medis_data = []
    if not rumah_sakit_ids:
        return layanan_medis_data
    
    nama_layanan_options = ['vaksinasi', 'fisioterapi', 'laboratorium', 'radiologi', 'konsultasi', 'rehabilitasi']
    
    for rs_id in rumah_sakit_ids:
        actual_count_per_rs = min(count_per_rs, len(nama_layanan_options))
        chosen_layanan = random.sample(nama_layanan_options, actual_count_per_rs)
        layanan_added_this_rs_loop = 0
        for nama_lyn in chosen_layanan:
            if layanan_added_this_rs_loop >= actual_count_per_rs : break
            
            biaya = random.randint(50000, 750000) 
            try:
                cursor.execute("""
                    INSERT INTO layanan_medis (id_rumah_sakit, nama_layanan, biaya)
                    VALUES (%s, %s, %s)
                """, (rs_id, nama_lyn, biaya))
                new_id_layanan = cursor.lastrowid # Ambil ID yang di-generate
                if new_id_layanan:
                    layanan_medis_data.append({'id_rumah_sakit': rs_id, 'id_layanan': new_id_layanan, 'nama_layanan': nama_lyn, 'biaya': biaya})
                    layanan_added_this_rs_loop +=1
            except mysql.connector.Error as err:
                print(f"Error seeding layanan_medis (initial): {err} for rs_id {rs_id}, layanan {nama_lyn}")
    
    inserted_in_first_loop = len(layanan_medis_data)
    remaining_to_insert = count - inserted_in_first_loop

    if remaining_to_insert > 0 and rumah_sakit_ids:
        for _ in range(remaining_to_insert):
            rs_id = random.choice(rumah_sakit_ids)
            nama_lyn = random.choice(nama_layanan_options) # Boleh duplikat (rs_id, nama_layanan) karena id_layanan akan beda
            biaya_extra = random.randint(60000, 650000)
            try:
                cursor.execute("""
                    INSERT INTO layanan_medis (id_rumah_sakit, nama_layanan, biaya)
                    VALUES (%s, %s, %s)
                """, (rs_id, nama_lyn, biaya_extra))
                new_id_layanan_extra = cursor.lastrowid
                if new_id_layanan_extra:
                    layanan_medis_data.append({'id_rumah_sakit': rs_id, 'id_layanan': new_id_layanan_extra, 'nama_layanan': nama_lyn, 'biaya': biaya_extra})
            except mysql.connector.Error as err:
                print(f"Error seeding layanan_medis (extra): {err} for rs_id {rs_id}, layanan {nama_lyn}")
    return layanan_medis_data

def seed_log_layanan(cursor, pasien_data, count=100):
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
        stok_obat = random.randint(10, 200) # Generate stok_obat
        try:
            cursor.execute("""
                INSERT INTO obat (id_obat, label, stok_obat)
                VALUES (%s, %s, %s)
            """, (id_obat, label, stok_obat))
            obat_ids.append(id_obat)
        except mysql.connector.Error as err:
            print(f"Error seeding obat: {err} for id {id_obat}")
    return obat_ids

def seed_pemesanan_layanan(cursor, layanan_medis_data, pasien_emails, count=100):
    if not layanan_medis_data or not pasien_emails:
        return

    status_options = ['belum dibayar', 'dijadwalkan', 'sedang berlangsung', 'selesai', 'dibatalkan']
    chosen = set()
    for _ in range(count):
        layanan = random.choice(layanan_medis_data)
        email = random.choice(pasien_emails)
        jadwal_pelaksanaan = fake.date_between(start_date="today", end_date="+2M")

        while (email, jadwal_pelaksanaan) in chosen:
            jadwal_pelaksanaan = fake.date_between(start_date="today", end_date="+2M")
        chosen.add((email, jadwal_pelaksanaan))
        status_pemesanan = random.choice(status_options)
        

        try:
            cursor.execute("""
                INSERT INTO pemesanan_layanan (id_layanan, email, jadwal_pelaksanaan, status_pemesanan)
                VALUES (%s, %s, %s, %s)
            """, (layanan['id_layanan'], email, jadwal_pelaksanaan, status_pemesanan))
        except mysql.connector.Error as err:
            if err.errno == 1062:
                print(f"Skipping duplicate pemesanan_layanan.")
            else:
                print(f"Error seeding pemesanan_layanan: {err}")


def seed_pengeluaran_resep(cursor, janji_temu_data, count=50):
    # DDL Added: total_biaya
    pengeluaran_resep_data = []
    if not janji_temu_data:
        return pengeluaran_resep_data

    existing_id_resep_globally = set()
    try:
        cursor.execute("SELECT id_resep FROM pengeluaran_resep")
        for row in cursor.fetchall(): existing_id_resep_globally.add(row[0])
        cursor.execute("SELECT id_resep FROM resep_obat")
        for row in cursor.fetchall(): existing_id_resep_globally.add(row[0])
    except mysql.connector.Error: pass
    
    used_janji_pk_for_resep = set() # Untuk memastikan (id_janji_temu, id_rumah_sakit) unik untuk pengeluaran resep
    try:
        cursor.execute("SELECT id_janji_temu, id_rumah_sakit FROM pengeluaran_resep")
        for row in cursor.fetchall(): used_janji_pk_for_resep.add((row[0],row[1]))
    except mysql.connector.Error: pass

    inserted_count = 0
    shuffled_janji = random.sample(janji_temu_data, len(janji_temu_data))

    for janji in shuffled_janji:
        if inserted_count >= count: break
        
        janji_pk_candidate_for_resep = (janji['id_janji_temu'], janji['id_rumah_sakit'])
        if janji_pk_candidate_for_resep in used_janji_pk_for_resep: 
            continue 
        
        id_resep = fake.unique.random_int(min=1, max=100000)
        while id_resep in existing_id_resep_globally:
             id_resep = fake.unique.random_int(min=1, max=100000)

        total_biaya = random.randint(10000, 250000) # Menambahkan total_biaya
        try:
            cursor.execute("""
                INSERT INTO pengeluaran_resep (id_janji_temu, id_rumah_sakit, id_resep, total_biaya)
                VALUES (%s, %s, %s, %s)
            """, (janji['id_janji_temu'], janji['id_rumah_sakit'], id_resep, total_biaya))
            pengeluaran_resep_data.append({
                'id_janji_temu': janji['id_janji_temu'], 
                'id_rumah_sakit': janji['id_rumah_sakit'], 
                'id_resep': id_resep,
                'total_biaya': total_biaya 
            })
            existing_id_resep_globally.add(id_resep)
            used_janji_pk_for_resep.add(janji_pk_candidate_for_resep)
            inserted_count += 1
        except mysql.connector.Error as err:
            print(f"Error seeding pengeluaran_resep: {err}")
    return pengeluaran_resep_data


def seed_resep_obat(cursor, obat_ids, pengeluaran_resep_data, count_per_resep=2, count = 100):
    # DDL Added: kuantitas
    if not obat_ids or not pengeluaran_resep_data:
        return
    
    inserted_this_run = 0
    for resep_info in pengeluaran_resep_data:
        if inserted_this_run >= count: break
        for _ in range(count_per_resep):
            if inserted_this_run >= count: break
            while True:
                id_obat = random.choice(obat_ids)
                dosis = f"{random.randint(1,3)}x sehari {random.randint(1,2)} tablet"
                cara_pakai = random.choice(["Sebelum makan", "Sesudah makan", "Saat makan"])
                kuantitas = random.randint(1, 5) # Menambahkan kuantitas
                try:
                    cursor.execute("""
                        INSERT INTO resep_obat (id_obat, id_resep, dosis, cara_pakai, kuantitas)
                        VALUES (%s, %s, %s, %s, %s)
                    """, (id_obat, resep_info['id_resep'], dosis, cara_pakai, kuantitas))
                    inserted_this_run +=1
                    break 
                except mysql.connector.Error as err:
                    if err.errno == 1062: 
                        print(f"Skipping duplicate resep_obat for obat {id_obat}, resep {resep_info['id_resep']}")
                    else:
                        print(f"Error seeding resep_obat: {err}")
                        break 
            if inserted_this_run >= count: break
        if inserted_this_run >= count: break

    additional_needed = count - inserted_this_run
    if additional_needed > 0 and obat_ids and pengeluaran_resep_data:
        for _ in range(additional_needed):
            while True:
                id_obat = random.choice(obat_ids)
                resep_info = random.choice(pengeluaran_resep_data)
                dosis = f"{random.randint(1,3)}x sehari {random.randint(1,2)} tablet"
                cara_pakai = random.choice(["Sebelum makan", "Sesudah makan", "Saat makan"])
                kuantitas = random.randint(1,5)
                try:
                    cursor.execute("""
                        INSERT INTO resep_obat (id_obat, id_resep, dosis, cara_pakai, kuantitas)
                        VALUES (%s, %s, %s, %s, %s)
                    """, (id_obat, resep_info['id_resep'], dosis, cara_pakai, kuantitas))
                    break
                except mysql.connector.Error as err:
                    if err.errno == 1062:   
                        print(f"Skipping duplicate resep_obat (extra) for obat {id_obat}, resep {resep_info['id_resep']}")
                    else:
                        print(f"Error seeding resep_obat (extra): {err}")
                        break


def seed_pemesanan_obat(cursor, pasien_emails_list, alamat_pasien_data, count=50): 
    pemesanan_obat_pks = []
    if not pasien_emails_list or not alamat_pasien_data:
        return pemesanan_obat_pks

    status_options = ['belum dibayar', 'dijadwalkan', 'sedang berlangsung', 'selesai', 'dibatalkan']
    
    inserted_count = 0
    existing_pks = set() # Untuk (email, waktu_pemesanan_norm)

    for _ in range(count):
        if inserted_count >= count: break
        while True:
            if not pasien_emails_list: break 
            email = random.choice(pasien_emails_list)
            
            valid_addresses_for_patient = [addr for addr in alamat_pasien_data if addr['email'] == email]
            if not valid_addresses_for_patient:
                if len(pasien_emails_list) <=1 and not any(addr['email'] == email for addr in alamat_pasien_data): break 
                continue 

            selected_address = random.choice(valid_addresses_for_patient)

            waktu_pemesanan_raw = fake.date_time_this_month(before_now=True, after_now=False) 
            waktu_pemesanan_norm = waktu_pemesanan_raw.replace(microsecond=0)

            if (email, waktu_pemesanan_norm) in existing_pks:
                continue 

            status_pemesanan = random.choice(status_options)
            total_biaya = random.randint(20000, 500000)
            try:
                # Menggunakan provinsi, kota, jalan dari selected_address
                cursor.execute("""
                    INSERT INTO pemesanan_obat (email, waktu_pemesanan, provinsi, kota, jalan, status_pemesanan, total_biaya)
                    VALUES (%s, %s, %s, %s, %s, %s, %s)
                """, (email, waktu_pemesanan_raw, selected_address['provinsi'], selected_address['kota'], selected_address['jalan'], status_pemesanan, total_biaya))
                pemesanan_obat_pks.append({
                    'email': email, 
                    'waktu_pemesanan': waktu_pemesanan_raw, 
                    'provinsi': selected_address['provinsi'], 
                    'kota': selected_address['kota'], 
                    'jalan': selected_address['jalan']
                    })
                existing_pks.add((email, waktu_pemesanan_norm)) 
                inserted_count +=1
                break 
            except mysql.connector.Error as err:
                if err.errno == 1062: 
                    print(f"Skipping duplicate pemesanan_obat for PK ({email}, {waktu_pemesanan_norm})")
                else:
                    print(f"Error seeding pemesanan_obat: {err}")
                    break 
        if not pasien_emails_list and inserted_count < count : break 
            
    return pemesanan_obat_pks


def seed_pemesanan_obat_obat(cursor, pemesanan_obat_pks, obat_ids, count_per_pemesanan=2, count=100): 
    # DDL PK: (email, waktu_pemesanan, id_obat)
    # DDL Removed: alamat_pengiriman
    # DDL Added: kuantitas
    if not pemesanan_obat_pks or not obat_ids:
        return

    inserted_this_run = 0

    for pk_info in pemesanan_obat_pks: 
        if inserted_this_run >= count: break
        for _ in range(count_per_pemesanan):
            if inserted_this_run >= count: break
            
            while True:
                id_obat = random.choice(obat_ids)
                kuantitas = random.randint(1, 4) # Menambahkan kuantitas
                try:
                    # Menghapus alamat_pengiriman dari INSERT
                    cursor.execute("""
                        INSERT INTO pemesanan_obat_obat (email, waktu_pemesanan, id_obat, kuantitas)
                        VALUES (%s, %s, %s, %s)
                    """, (pk_info['email'], pk_info['waktu_pemesanan'], id_obat, kuantitas))
                    inserted_this_run += 1
                    break
                except mysql.connector.Error as err:
                    if err.errno == 1062: # PK (email, waktu_pemesanan, id_obat)
                        print(f"Skipping duplicate pemesanan_obat_obat for PK ({pk_info['email']}, {pk_info['waktu_pemesanan']}, {id_obat})")
                    else:
                        print(f"Error seeding pemesanan_obat_obat: {err}")
                        break 
            if inserted_this_run >= count: break
        if inserted_this_run >= count: break
                        
    additional_needed = count - inserted_this_run
    if additional_needed > 0 and pemesanan_obat_pks and obat_ids:
        for _ in range(additional_needed):
            id_obat = random.choice(obat_ids)
            pk_info = random.choice(pemesanan_obat_pks)
            kuantitas = random.randint(1,4)
            while True:
                try:
                    cursor.execute("""
                        INSERT INTO pemesanan_obat_obat (email, waktu_pemesanan, id_obat, kuantitas)
                        VALUES (%s, %s, %s, %s)
                    """, (pk_info['email'], pk_info['waktu_pemesanan'], id_obat, kuantitas))
                    break
                except mysql.connector.Error as err:
                    if err.errno == 1062:
                        print(f"Skipping duplicate pemesanan_obat_obat (extra) for PK ({pk_info['email']}, {pk_info['waktu_pemesanan']}, {id_obat})")
                    else:
                        print(f"Error seeding pemesanan_obat_obat (extra): {err}")
                        break


def seed_telepon_pengguna(cursor, pengguna_emails, count = 300):
    # DDL PK: (no_telepon)
    if not pengguna_emails:
        return
    
    inserted_count = 0
    existing_no_telepon = set()
    try:
        cursor.execute("SELECT no_telepon FROM telepon_pengguna")
        for row in cursor.fetchall(): existing_no_telepon.add(row[0])
    except mysql.connector.Error: pass

    
    for email in pengguna_emails:
        if inserted_count >= count: break
        no_telepon = fake.unique.phone_number()
        while no_telepon in existing_no_telepon: # Pastikan no_telepon unik global
             no_telepon = fake.unique.phone_number()
        try:
            cursor.execute("""
                INSERT INTO telepon_pengguna (email, no_telepon)
                VALUES (%s, %s)
            """, (email, no_telepon))
            existing_no_telepon.add(no_telepon) # Tambahkan ke set setelah berhasil
            inserted_count += 1
        except mysql.connector.Error as err:
            if err.errno == 1062: # Duplicate PK (no_telepon)
                print(f"Skipping duplicate telepon_pengguna for no_telepon {no_telepon}")
            else:
                print(f"Error seeding telepon_pengguna: {err} for email {email}")
        if inserted_count >= count: break 
    
    additional_to_insert = count - inserted_count
    if additional_to_insert > 0 and pengguna_emails: # Pastikan pengguna_emails tidak kosong
        for _ in range(additional_to_insert):
            email_choice = random.choice(pengguna_emails) # Pilih email secara acak
            no_telepon = fake.unique.phone_number()
            while no_telepon in existing_no_telepon:
                 no_telepon = fake.unique.phone_number()
            try:
                cursor.execute("""
                    INSERT INTO telepon_pengguna (email, no_telepon)
                    VALUES (%s, %s)
                """, (email_choice, no_telepon))
                existing_no_telepon.add(no_telepon)
            except mysql.connector.Error as err:
                if err.errno == 1062:
                    print(f"Skipping duplicate telepon_pengguna (extra) for no_telepon {no_telepon}")
                else:
                    print(f"Error seeding telepon_pengguna (extra): {err} for email {email_choice}")

def seed_status_baymin(cursor, pasien_data): # Fungsi baru
    if not pasien_data:
        return
    
    status_options = ['low', 'medium', 'full']
    warna_options = ['Merah', 'Biru', 'Hijau', 'Hitam', 'Putih', 'Abu-abu', 'Kuning']

    for pasien in pasien_data: # pasien is a dict {'email': ..., 'firmware_baymin': ...}
        firmware = pasien['firmware_baymin']
        status_baterai = random.choice(status_options)
        warna_perangkat = random.choice(warna_options)
        try:
            cursor.execute("""
                INSERT INTO status_baymin (firmware_baymin, status_baterai, warna_perangkat)
                VALUES (%s, %s, %s)
            """, (firmware, status_baterai, warna_perangkat))
        except mysql.connector.Error as err:
            if err.errno == 1062: # Duplicate firmware_baymin (PK)
                print(f"Skipping duplicate status_baymin for firmware {firmware}")
            else:
                print(f"Error seeding status_baymin: {err} for firmware {firmware}")


def print_row_counts(cursor):
    print("\n--- Jumlah Baris per Tabel ---")
    try:
        cursor.execute("SHOW TABLES")
        tables = [table[0] for table in cursor.fetchall()]
        for table_name in tables:
            cursor.execute(f"SELECT COUNT(*) FROM `{table_name}`")
            count = cursor.fetchone()[0]
            print(f"Tabel '{table_name}': {count} baris")
    except mysql.connector.Error as err:
        print(f"Error saat mengambil jumlah baris: {err}")
    print("----------------------------\n")


if __name__ == '__main__':
    conn = connect_db()
    if conn:
        cursor = conn.cursor(buffered=True) # Sesuai kode asli user
        
        print("Seeding pengguna...")
        all_pengguna_emails = seed_pengguna(cursor)
        
        print("Seeding pasien...")
        all_pasien_data = seed_pasien(cursor, all_pengguna_emails)
        pasien_emails_only = [p['email'] for p in all_pasien_data]

        print("Seeding status_baymin...") # Pemanggilan fungsi baru
        seed_status_baymin(cursor, all_pasien_data)

        print("Seeding alamat_pasien...")
        all_alamat_pasien_data = seed_alamat_pasien(cursor, pasien_emails_only) # Menyimpan return value
        
        print("Seeding rumah_sakit...")
        all_rumah_sakit_ids = seed_rumah_sakit(cursor)
        
        print("Seeding telepon_rumah_sakit...")
        seed_telepon_rumah_sakit(cursor, all_rumah_sakit_ids)
        
        print("Seeding departemen...")
        all_departemen_data = seed_departemen(cursor, all_rumah_sakit_ids)
        
        print("Seeding tenaga_medis...")
        non_pasien_emails = [email for email in all_pengguna_emails if email not in pasien_emails_only]
        all_tenaga_medis_data = seed_tenaga_medis(cursor, non_pasien_emails, all_departemen_data, pasien_emails_only) # Menyesuaikan parameter
        
        print("Seeding janji_temu...")
        all_janji_temu_data = seed_janji_temu(cursor, all_rumah_sakit_ids)
        
        print("Seeding melakukan_janji...")
        if pasien_emails_only and all_tenaga_medis_data and all_janji_temu_data: # Menggunakan all_tenaga_medis_data
             seed_melakukan_janji(cursor, pasien_emails_only, all_tenaga_medis_data, all_janji_temu_data)
        
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
        all_pemesanan_obat_pks = seed_pemesanan_obat(cursor, pasien_emails_only, all_alamat_pasien_data) # Meneruskan alamat_pasien_data

        print("Seeding pemesanan_obat_obat...")
        if all_pemesanan_obat_pks and all_obat_ids:
            seed_pemesanan_obat_obat(cursor, all_pemesanan_obat_pks, all_obat_ids)

        print("Seeding telepon_pengguna...")
        seed_telepon_pengguna(cursor, all_pengguna_emails)

        conn.commit()
        print("Database seeded successfully.")


        print_row_counts(cursor)
        cursor.close()
        conn.close()
    else:
        print("Could not connect to database. Seeding aborted.")
