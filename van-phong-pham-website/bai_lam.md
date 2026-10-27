# BÀI LÀM – THI THỬ HACKATHON 01

- **Mã đề:** Thi thử
- **Họ tên:** 
- **Lớp:** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy
```shell
pwd
ls
mv .\nhap_hang.txt docs
mv .\logo_van_phong_pham.png media
cd ..
cp .\media\logo_van_phong_pham.png .\backup\
rm .\temp_131.tmp
cd .\logs\
dir
cd ..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
  Directory: C:\Users\do trung kien\Downloads\starter-kit\starter-kit\van-phong-pham-website

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/27/2026   5:42 PM                backup
d-----        10/27/2026   5:26 PM                data
d-----        10/27/2026   5:32 PM                docs
d-----        10/27/2026   5:26 PM                logs
d-----        10/27/2026   5:38 PM                media
------        10/19/2026   9:41 AM             78 .env
-a----        10/27/2026   5:48 PM           2337 bai_lam.md


    Directory: C:\Users\do trung kien\Downloads\starter-kit\starter-kit\van-phong-pham-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6053 logo_van_phong_pham.png


    Directory: C:\Users\do trung kien\Downloads\starter-kit\starter-kit\van-phong-pham-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6105 don_ban_thang_10.xlsx


    Directory: C:\Users\do trung kien\Downloads\starter-kit\starter-kit\van-phong-pham-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM             51 nhap_hang.txt


    Directory: C:\Users\do trung kien\Downloads\starter-kit\starter-kit\van-phong-pham-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           1053 shop.log


    Directory: C:\Users\do trung kien\Downloads\starter-kit\starter-kit\van-phong-pham-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6053 logo_van_phong_pham.png
```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
gc .\logs\shop.log | select-string "ERROR"
gc .\logs\shop.log | select-string "ERROR" >> .\logs\daily_report.txt
```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] Heading 1: tên dự án
- [ ] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [ ] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [ ] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [ ] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [ ] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
ni auto_report.ps1
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
start .\auto_report.ps1
gc .\logs\auto_report.txt
```

### Nội dung file logs/auto_report.txt

```text
=== BAO CAO LOI ===

2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:33:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:39:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:42:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 09:12:28 [ERROR] Thanh toan bi tu choi



```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
 (gc .\logs\auto_report.txt |Select-String "ERROR").count
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
set-content .\logs\tong_hop.txt -value "=== TONG HOP LOG ==="
gc .\logs\shop.log | Select-String "WARNING" >> .\logs\tong_hop.txt
```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===


2025-10-28 08:51:28 [WARNING] Thoi gian tai trang cham

2025-10-28 08:54:28 [WARNING] Anh san pham dung luong lon

2025-10-28 08:57:28 [WARNING] Thoi gian tai trang cham





6

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_ban_thang_10.xlsx`, không cần ghi vào đây.
=VLOOKUP(C2,SanPham!$A$1:$C$8,2,FALSE)
=VLOOKUP(C2,SanPham!$A$1:$C$8,3,FALSE)
=D2*F2