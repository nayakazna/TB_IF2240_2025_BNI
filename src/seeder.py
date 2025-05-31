import mysql.connector
from faker import Faker
import random
from datetime import datetime

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
        kata_sandi = fake.password(length=random.randint(8,16), special_chars=True, digits=True, upper_case=True, lower_case=True)
        nama_lengkap = fake.name()
        tanggal_lahir = fake.date_of_birth(minimum_age=10, maximum_age=80)
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
    inserted_addresses = []
    if not pasien_emails:
        return inserted_addresses
    
    possible_inserts = []
    for i in range(count * 2): 
        if not pasien_emails: break
        email = random.choice(pasien_emails)
        provinsi = fake.state()
        kota = fake.city()
        jalan = fake.street_address()
        possible_inserts.append((email, provinsi, kota, jalan))
    
    unique_inserts_tuples = list(set(possible_inserts))
    random.shuffle(unique_inserts_tuples)

    for email, provinsi, kota, jalan in unique_inserts_tuples:
        if len(inserted_addresses) >= count:
            break
        try:
            cursor.execute("""
                INSERT INTO alamat_pasien (email, provinsi, kota, jalan)
                VALUES (%s, %s, %s, %s)
            """, (email, provinsi, kota, jalan))
            inserted_addresses.append({'email': email, 'provinsi': provinsi, 'kota': kota, 'jalan': jalan})
        except mysql.connector.Error as err:
            if err.errno == 1062: 
                 pass
            else:
                print(f"Error seeding alamat_pasien: {err} for email {email}")
    return inserted_addresses

def seed_rumah_sakit(cursor, count=20):
    rumah_sakit_ids = []
    for _ in range(count):
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
    for _ in range(count * 2): 
        if inserted_count >= count:
            break
        if not rumah_sakit_ids: break
        rs_id = random.choice(rumah_sakit_ids)
        no_telepon = fake.unique.phone_number()
        try:
            cursor.execute("""
                INSERT INTO telepon_rumah_sakit (id_rumah_sakit, no_telepon)
                VALUES (%s, %s)
            """, (rs_id, no_telepon))
            inserted_count +=1
        except mysql.connector.Error as err:
            if err.errno == 1062: 
                pass
            else:
                print(f"Error seeding telepon_rumah_sakit: {err} for rs_id {rs_id}")

def seed_departemen(cursor, rumah_sakit_ids, target_total_count=50):
    departemen_data = []
    if not rumah_sakit_ids:
        return departemen_data
    
    nama_departemen_options = ["Kardiologi", "Neurologi", "Umum", "Anak", "Bedah", "Gigi", "Kulit", "THT", "Mata", "Paru", "Ortopedi", "Psikiatri"]
    
    possible_departemen = []
    for _ in range(target_total_count * 3): 
        if not rumah_sakit_ids: break
        rs_id = random.choice(rumah_sakit_ids)
        nama_dept = random.choice(nama_departemen_options)
        gedung = f"Gedung {random.choice(['A', 'B', 'C', 'Utama', 'Timur', 'Barat', 'Selatan', 'Paviliun'])}"
        possible_departemen.append({'nama_departemen': nama_dept, 'id_rumah_sakit': rs_id, 'gedung': gedung})
    
    unique_departemen_pks = set()
    random.shuffle(possible_departemen) 

    for dept_info in possible_departemen:
        if len(departemen_data) >= target_total_count:
            break
        pk = (dept_info['nama_departemen'], dept_info['id_rumah_sakit'])
        if pk in unique_departemen_pks:
            continue
        try:
            cursor.execute("""
                INSERT INTO departemen (nama_departemen, id_rumah_sakit, gedung)
                VALUES (%s, %s, %s)
            """, (dept_info['nama_departemen'], dept_info['id_rumah_sakit'], dept_info['gedung']))
            departemen_data.append({'nama_departemen': dept_info['nama_departemen'], 'id_rumah_sakit': dept_info['id_rumah_sakit']})
            unique_departemen_pks.add(pk)
        except mysql.connector.Error as err:
            if err.errno != 1062: 
                print(f"Error seeding departemen: {err} for rs_id {dept_info['id_rumah_sakit']}, dept {dept_info['nama_departemen']}")
    return departemen_data

def seed_tenaga_medis(cursor, pengguna_emails, departemen_data, pasien_emails_list, count_target=100):
    tenaga_medis_data_list = []
    if not pengguna_emails or not departemen_data:
        return tenaga_medis_data_list

    non_pasien_emails = [email for email in pengguna_emails if email not in pasien_emails_list]
    random.shuffle(non_pasien_emails) 

    for email in non_pasien_emails:
        if len(tenaga_medis_data_list) >= count_target: break
        if not departemen_data: break 
        
        dept = random.choice(departemen_data)
        NIKes = fake.unique.ean(length=13) 
        jenis_profesi = random.choice(["Dokter", "Perawat", "Bidan", "Apoteker", "Fisioterapis", "Ahli Gizi"])
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
                pass
            else:
                print(f"Error seeding tenaga_medis: {err} for email {email}")
    return tenaga_medis_data_list

def seed_janji_temu(cursor, rumah_sakit_ids, count=50):
    janji_temu_data = []
    if not rumah_sakit_ids:
        return janji_temu_data
    
    for _ in range(count):
        if not rumah_sakit_ids: break
        id_rumah_sakit = random.choice(rumah_sakit_ids)
        waktu_pelaksanaan = fake.date_time_between(start_date="-1M", end_date="+1M")
        alasan = fake.sentence(nb_words=random.randint(5,15))
        try:
            cursor.execute("""
                INSERT INTO janji_temu (id_rumah_sakit, waktu_pelaksanaan, alasan)
                VALUES (%s, %s, %s)
            """, (id_rumah_sakit, waktu_pelaksanaan, alasan))
            id_janji_temu = cursor.lastrowid 
            if id_janji_temu:
                 janji_temu_data.append({'id_janji_temu': id_janji_temu, 'id_rumah_sakit': id_rumah_sakit, 'waktu_pelaksanaan': waktu_pelaksanaan})
        except mysql.connector.Error as err:
            print(f"Error seeding janji_temu: {err}")
    return janji_temu_data

def seed_melakukan_janji(cursor, pasien_emails, tenaga_medis_data_list, janji_temu_data, count=150):
    if not pasien_emails or not tenaga_medis_data_list or not janji_temu_data:
        return
    
    inserted_count = 0
    for _ in range(count * 5): 
        if inserted_count >= count: break
        if not janji_temu_data or not pasien_emails or not tenaga_medis_data_list: break

        email_pasien_choice = random.choice(pasien_emails)
        janji_choice = random.choice(janji_temu_data)
        
        possible_tm_for_janji_rs = [tm for tm in tenaga_medis_data_list if tm['id_rumah_sakit'] == janji_choice['id_rumah_sakit']]
        if not possible_tm_for_janji_rs:
            continue 
        
        tenaga_medis_info = random.choice(possible_tm_for_janji_rs)
        email_tenaga_medis_choice = tenaga_medis_info['email']
        
        try:
            cursor.execute("""
                INSERT INTO melakukan_janji (email_pasien, id_janji_temu, email_tenaga_medis, id_rumah_sakit)
                VALUES (%s, %s, %s, %s)
            """, (email_pasien_choice, janji_choice['id_janji_temu'], email_tenaga_medis_choice, janji_choice['id_rumah_sakit']))
            inserted_count += 1
        except mysql.connector.Error as err:
            if err.errno == 1062: 
                pass
            else:
                print(f"Error seeding melakukan_janji: {err}")
                
    if inserted_count < count:
         print(f"Warning: Hanya berhasil insert {inserted_count} dari {count} melakukan_janji.")

def seed_layanan_medis(cursor, rumah_sakit_ids, target_total_count=50):
    layanan_medis_data = []
    if not rumah_sakit_ids:
        return layanan_medis_data
    
    nama_layanan_options = ['vaksinasi','fisioterapi','laboratorium','radiologi','konsultasi','rehabilitasi']
    
    for _ in range(target_total_count):
        if not rumah_sakit_ids: break
        rs_id = random.choice(rumah_sakit_ids)
        nama_lyn = random.choice(nama_layanan_options)
        biaya = random.randint(50000, 1000000) // 1000 * 1000 
        try:
            cursor.execute("""
                INSERT INTO layanan_medis (id_rumah_sakit, nama_layanan, biaya)
                VALUES (%s, %s, %s)
            """, (rs_id, nama_lyn, biaya))
            new_id_layanan = cursor.lastrowid
            if new_id_layanan:
                layanan_medis_data.append({
                    'id_rumah_sakit': rs_id, 
                    'id_layanan': new_id_layanan, 
                    'nama_layanan': nama_lyn, 
                    'biaya': biaya
                })
        except mysql.connector.Error as err:
            print(f"Error seeding layanan_medis: {err} for rs_id {rs_id}, layanan {nama_lyn}")
            
    return layanan_medis_data

def seed_log_layanan(cursor, pasien_data, count=100):
    if not pasien_data:
        return
    
    inserted_count = 0
    for _ in range(count * 2): 
        if inserted_count >= count: break
        if not pasien_data: break
        waktu_pengguna = fake.date_time_this_year(before_now=True, after_now=False)
        waktu_pengguna = waktu_pengguna.replace(microsecond=random.randint(0,999999)) 
        jenis_tindakan = fake.bs()
        pasien = random.choice(pasien_data)
        try:
            cursor.execute("""
                INSERT INTO log_layanan (firmware_baymin, waktu_pengguna, jenis_tindakan)
                VALUES (%s, %s, %s)
            """, (pasien['firmware_baymin'], waktu_pengguna, jenis_tindakan))
            inserted_count += 1
        except mysql.connector.Error as err:
            if err.errno == 1062: 
                pass
            else:
                print(f"Error seeding log_layanan: {err} for firmware {pasien['firmware_baymin']}")

def seed_obat(cursor, count=20):
    obat_data = []
    label_options = ['analgesik','antibiotik','obat herbal']
    for _ in range(count):
        id_obat = fake.unique.random_int(min=1, max=10000) 
        label = random.choice(label_options)
        stok_obat = random.randint(0, 250) 
        harga = random.randint(1000, 100000) // 500 * 500 # Ensure harga is populated
        try:
            cursor.execute("""
                INSERT INTO obat (id_obat, label, stok_obat, harga) 
                VALUES (%s, %s, %s, %s)
            """, (id_obat, label, stok_obat, harga))
            obat_data.append({'id_obat': id_obat, 'label': label, 'stok_obat': stok_obat, 'harga': harga})
        except mysql.connector.Error as err:
            print(f"Error seeding obat: {err} for id {id_obat}") 
    return obat_data

def seed_pemesanan_layanan(cursor, layanan_medis_data, pasien_emails, count=100):
    if not layanan_medis_data or not pasien_emails:
        return

    status_options = ['belum dibayar', 'dijadwalkan', 'sedang berlangsung', 'selesai', 'dibatalkan']
    
    for _ in range(count):
        if not layanan_medis_data or not pasien_emails: break
        layanan = random.choice(layanan_medis_data)
        email = random.choice(pasien_emails)
        status_pemesanan = random.choice(status_options)
        
        if status_pemesanan in ['belum dibayar', 'dijadwalkan', 'sedang berlangsung']:
            jadwal_pelaksanaan = fake.date_between(start_date="today", end_date="+2M")
        else: 
            jadwal_pelaksanaan = fake.date_between(start_date="-2M", end_date="today")
        
        try:
            cursor.execute("""
                INSERT INTO pemesanan_layanan (id_layanan, email, jadwal_pelaksanaan, status_pemesanan)
                VALUES (%s, %s, %s, %s)
            """, (layanan['id_layanan'], email, jadwal_pelaksanaan, status_pemesanan))
        except mysql.connector.Error as err:
            print(f"Error seeding pemesanan_layanan: {err}")

def _seed_resep_obat_items(cursor, id_resep_parent, obat_data, num_items=2):
    items_seeded_count = 0
    if not obat_data: return items_seeded_count

    actual_num_items_to_seed = min(num_items, len(obat_data))
    
    if actual_num_items_to_seed == 0:
        return 0
        
    selected_obat_items = random.sample(obat_data, actual_num_items_to_seed)

    for obat_item in selected_obat_items:
        dosis_val = f"{random.randint(1,3)}x sehari {random.randint(1,2)}"
        unit_type = random.choice(['tablet', 'kapsul', 'ml sirup', 'tetes', 'supp'])
        dosis = f"{dosis_val} {unit_type}"
        cara_pakai_options = ["Sebelum makan", "Sesudah makan", "Saat makan", "Pagi hari", "Malam hari"]
        if "sirup" in unit_type or "tetes" in unit_type :
             cara_pakai_options.extend(["Dicampur air", "Langsung diminum"])
        elif "tablet" in unit_type or "kapsul" in unit_type:
             cara_pakai_options.extend(["Dihancurkan jika perlu", "Telan utuh dengan air"])
        cara_pakai = random.choice(cara_pakai_options)
        kuantitas = random.randint(1, 5)
        try:
            cursor.execute("""
                INSERT INTO resep_obat (id_obat, id_resep, dosis, cara_pakai, kuantitas)
                VALUES (%s, %s, %s, %s, %s)
            """, (obat_item['id_obat'], id_resep_parent, dosis, cara_pakai, kuantitas))
            items_seeded_count += 1
        except mysql.connector.Error as err_ro:
            if err_ro.errno == 1062: 
                print(f"PK clash (1062) saat seeding resep_obat item untuk id_resep {id_resep_parent}, id_obat {obat_item['id_obat']}: {err_ro.msg}")
            elif err_ro.errno == 1452: 
                print(f"FK Error (1452) seeding resep_obat item for id_resep {id_resep_parent}: Parent pengeluaran_resep likely failed to insert. {err_ro.msg}")
            else:
                print(f"Error seeding resep_obat item for id_resep {id_resep_parent}: {err_ro}")
    return items_seeded_count

def seed_pengeluaran_resep_and_items(cursor, janji_temu_data, obat_data, count_pengeluaran=50, items_per_resep_target=2):
    pengeluaran_resep_created_data = []
    if not janji_temu_data or not obat_data:
        return pengeluaran_resep_created_data

    shuffled_janji = random.sample(janji_temu_data, min(len(janji_temu_data), count_pengeluaran * 2))
    inserted_pengeluaran_count = 0
    total_resep_obat_items_seeded_overall = 0

    for janji in shuffled_janji:
        if inserted_pengeluaran_count >= count_pengeluaran:
            break
        
        id_resep_current = fake.unique.random_int(min=1, max=1000000) 
        total_biaya_placeholder = 0 # Will be updated by trigger if `obat.harga` is used by trigger

        try:
            cursor.execute("""
                INSERT INTO pengeluaran_resep (id_janji_temu, id_rumah_sakit, id_resep, total_biaya)
                VALUES (%s, %s, %s, %s)
            """, (janji['id_janji_temu'], janji['id_rumah_sakit'], id_resep_current, total_biaya_placeholder))
            
            # If pengeluaran_resep insert is successful, then seed its items
            num_items_for_this_resep = _seed_resep_obat_items(cursor, id_resep_current, obat_data, items_per_resep_target)
            total_resep_obat_items_seeded_overall += num_items_for_this_resep
            
            if num_items_for_this_resep < items_per_resep_target and items_per_resep_target > 0 :
                 print(f"Warning: For pengeluaran_resep ID {id_resep_current}, expected {items_per_resep_target} items, but only {num_items_for_this_resep} were seeded due to PK clashes or other issues in resep_obat.")

            # Add to list only if parent was successfully inserted
            pengeluaran_resep_created_data.append({
                'id_janji_temu': janji['id_janji_temu'], 
                'id_rumah_sakit': janji['id_rumah_sakit'], 
                'id_resep': id_resep_current,
                'total_biaya': total_biaya_placeholder 
            })
            inserted_pengeluaran_count += 1

        except mysql.connector.Error as err_pr:
            if err_pr.errno == 1062: # PK or Unique constraint violation for pengeluaran_resep
                 pass 
            elif err_pr.errno == 1644: # Trigger tr_validasi_resep_before_insert fired
                 print(f"Trigger error (1644) for pengeluaran_resep ID {id_resep_current}: {err_pr.msg}. This means resep_obat items were expected by trigger but not found (should be seeded after).")
                 # This case should ideally not happen with the new order if trigger allows 0 items initially
            else:
                print(f"Error seeding pengeluaran_resep for id_resep {id_resep_current}: {err_pr}")
    
    print(f"Total resep_obat items seeded overall: {total_resep_obat_items_seeded_overall}")
    return pengeluaran_resep_created_data


def seed_pemesanan_obat(cursor, pasien_emails_list, alamat_pasien_data, count=50): 
    pemesanan_obat_pks_details = []
    if not pasien_emails_list or not alamat_pasien_data:
        return pemesanan_obat_pks_details

    status_options = ['belum dibayar', 'dijadwalkan', 'sedang berlangsung', 'selesai', 'dibatalkan']
    
    inserted_count = 0
    for _ in range(count * 5): 
        if inserted_count >= count: break
        if not pasien_emails_list: break 

        email = random.choice(pasien_emails_list)
        
        valid_addresses_for_patient = [addr for addr in alamat_pasien_data if addr['email'] == email]
        if not valid_addresses_for_patient:
            continue 

        selected_address = random.choice(valid_addresses_for_patient)
        waktu_pemesanan = fake.date_time_this_month(before_now=True, after_now=False) 
        waktu_pemesanan = waktu_pemesanan.replace(microsecond=random.randint(0,999999))
        
        status_pemesanan = random.choice(status_options)
        total_biaya = 0 # Assuming triggers will calculate this using obat.harga
        
        try:
            cursor.execute("""
                INSERT INTO pemesanan_obat (email, waktu_pemesanan, provinsi, kota, jalan, status_pemesanan, total_biaya)
                VALUES (%s, %s, %s, %s, %s, %s, %s)
            """, (email, waktu_pemesanan, selected_address['provinsi'], selected_address['kota'], selected_address['jalan'], status_pemesanan, total_biaya))
            pemesanan_obat_pks_details.append({
                'email': email, 
                'waktu_pemesanan': waktu_pemesanan, 
                'provinsi': selected_address['provinsi'], 
                'kota': selected_address['kota'], 
                'jalan': selected_address['jalan'],
                'total_biaya': total_biaya 
                })
            inserted_count += 1
        except mysql.connector.Error as err:
            if err.errno == 1062: 
                pass
            else:
                print(f"Error seeding pemesanan_obat: {err}")
                    
    return pemesanan_obat_pks_details

def seed_pemesanan_obat_obat(cursor, pemesanan_obat_pks_details, obat_data, target_total_count=100): 
    if not pemesanan_obat_pks_details or not obat_data:
        return

    inserted_this_run = 0
    
    for _ in range(target_total_count * 5): 
        if inserted_this_run >= target_total_count: break
        if not pemesanan_obat_pks_details or not obat_data: break 

        pk_info = random.choice(pemesanan_obat_pks_details)
        obat_chosen = random.choice(obat_data)
        kuantitas = random.randint(1, 4) 
        
        try:
            cursor.execute("""
                INSERT INTO pemesanan_obat_obat (email, waktu_pemesanan, id_obat, kuantitas)
                VALUES (%s, %s, %s, %s)
            """, (pk_info['email'], pk_info['waktu_pemesanan'], obat_chosen['id_obat'], kuantitas))
            inserted_this_run += 1
        except mysql.connector.Error as err:
            if err.errno == 1062: 
                pass
            else:
                print(f"Error seeding pemesanan_obat_obat: {err}")

def seed_telepon_pengguna(cursor, pengguna_emails, count_target=300):
    if not pengguna_emails:
        return
    
    inserted_count = 0
    for _ in range(count_target * 2): 
        if inserted_count >= count_target: break
        if not pengguna_emails: break
        email = random.choice(pengguna_emails)
        no_telepon = fake.unique.phone_number()
        try:
            cursor.execute("""
                INSERT INTO telepon_pengguna (email, no_telepon)
                VALUES (%s, %s)
            """, (email, no_telepon))
            inserted_count += 1
        except mysql.connector.Error as err:
            if err.errno == 1062: 
                pass
            else:
                print(f"Error seeding telepon_pengguna: {err} for email {email}")

def seed_status_baymin(cursor, pasien_data): 
    if not pasien_data:
        return
    
    status_options = ['Low','Medium','Full'] 
    warna_options = ['Merah', 'Biru', 'Hijau', 'Hitam', 'Putih', 'Abu-abu', 'Kuning', 'Ungu', 'Jingga', 'Perak']

    for pasien in pasien_data: 
        firmware = pasien['firmware_baymin']
        status_baterai = random.choice(status_options)
        warna_perangkat = random.choice(warna_options)
        suhu = random.uniform(20.0, 40.0)
        suhu = round(suhu, 2)
        try:
            cursor.execute("""
                INSERT INTO status_baymin (firmware_baymin, suhu, status_baterai, warna_perangkat)
                VALUES (%s, %s, %s, %s)
            """, (firmware, suhu, status_baterai, warna_perangkat))
        except mysql.connector.Error as err:
            if err.errno == 1062: 
                pass 
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
        cursor = conn.cursor(buffered=True)
        
        print("Seeding pengguna...")
        all_pengguna_emails = seed_pengguna(cursor, count=150)
        
        print("Seeding pasien...")
        all_pasien_data = seed_pasien(cursor, all_pengguna_emails, count=50)
        pasien_emails_only = [p['email'] for p in all_pasien_data]

        print("Seeding status_baymin...")
        seed_status_baymin(cursor, all_pasien_data) 

        print("Seeding alamat_pasien...")
        all_alamat_pasien_data = seed_alamat_pasien(cursor, pasien_emails_only, count=100)
        
        print("Seeding rumah_sakit...")
        all_rumah_sakit_ids = seed_rumah_sakit(cursor, count=20)
        
        print("Seeding telepon_rumah_sakit...")
        seed_telepon_rumah_sakit(cursor, all_rumah_sakit_ids, count=50)
        
        print("Seeding departemen...")
        all_departemen_data = seed_departemen(cursor, all_rumah_sakit_ids, target_total_count=50)
        
        print("Seeding tenaga_medis...")
        all_tenaga_medis_data = seed_tenaga_medis(cursor, all_pengguna_emails, all_departemen_data, pasien_emails_only, count_target=100)
        
        print("Seeding janji_temu...")
        all_janji_temu_data = seed_janji_temu(cursor, all_rumah_sakit_ids, count=50)
        
        print("Seeding melakukan_janji...")
        seed_melakukan_janji(cursor, pasien_emails_only, all_tenaga_medis_data, all_janji_temu_data, count=150)
        
        print("Seeding layanan_medis...")
        all_layanan_medis_data = seed_layanan_medis(cursor, all_rumah_sakit_ids, target_total_count=50)
        
        print("Seeding log_layanan...")
        seed_log_layanan(cursor, all_pasien_data, count=100)
        
        print("Seeding obat...")
        all_obat_data = seed_obat(cursor, count=20)
        
        print("Seeding pemesanan_layanan...")
        seed_pemesanan_layanan(cursor, all_layanan_medis_data, pasien_emails_only, count=100)

        print("Seeding pengeluaran_resep and resep_obat items...")
        all_pengeluaran_resep_data = seed_pengeluaran_resep_and_items(cursor, all_janji_temu_data, all_obat_data, count_pengeluaran=50, items_per_resep_target=2)

        print("Seeding pemesanan_obat...")
        all_pemesanan_obat_pks_details = seed_pemesanan_obat(cursor, pasien_emails_only, all_alamat_pasien_data, count=50)

        print("Seeding pemesanan_obat_obat...")
        seed_pemesanan_obat_obat(cursor, all_pemesanan_obat_pks_details, all_obat_data, target_total_count=100)

        print("Seeding telepon_pengguna...")
        seed_telepon_pengguna(cursor, all_pengguna_emails, count_target=300)
        
        conn.commit()
        print("Database seeded successfully.")

        print_row_counts(cursor)
        cursor.close()
        conn.close()
    else:
        print("Could not connect to database. Seeding aborted.")

