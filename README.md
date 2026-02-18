# 🌼 WSL – w_in_home

## Phong cách Liêm 2.0

Cấu hình giao diện WSL mang phong cách thiền – tối giản – kỹ thuật.

------

# 🎯 Mục tiêu

Khi mở WSL sẽ hiển thị:

```
🌼 Nam Mô A Di Đà Phật
✨ Hào quang vô lượng chiếu tâm
--------------------------------

11:20:01  514/11919MB [R 4.5.2] o_hanh_iem@liem-pchome ~/GitHub/wsl (main)
❯
```

Bao gồm:

- 🕒 Giờ hệ thống (HH:MM:SS)
- 💾 RAM used/total (MB)
- 📦 R version (chỉ hiện khi vào project R)
- 🎨 Git branch màu vàng
- 🌟 Hào quang mờ
- Prompt 2 dòng rõ ràng

------

# 📁 Cấu trúc thư mục

```
wsl/
 └── w_in_home/
      ├── bashrc_liem
      ├── aliases_liem.sh
      ├── install.sh
      └── README.md
```

------

# 🚀 CÀI ĐẶT TỪ ĐẦU

## 1️⃣ Mở WSL

Trong PowerShell:

```
wsl
```

------

## 2️⃣ Vào thư mục cấu hình

```
cd /mnt/d/GitHub/wsl/w_in_home
```

------

## 3️⃣ Chạy script cài đặt

```
bash install.sh
```

Script sẽ:

- Backup ~/.bashrc thành ~/.bashrc.bak_liem
- Copy bashrc_liem vào ~/.bashrc
- Thêm aliases
- Reload cấu hình

------

## 4️⃣ Mở lại WSL

Thoát:

```
exit
```

Mở lại:

```
wsl
```

------

# 🔧 Nếu gặp lỗi ký tự lạ []

Do CRLF của Windows.

Chạy:

```
sed -i 's/\r$//' ~/.bashrc
```

------

# 🧠 Nhận diện Project R

R version chỉ hiện khi trong thư mục có:

- *.Rproj
- renv.lock
- DESCRIPTION

Dò tối đa 6 cấp thư mục cha.

------

# 🎨 Git branch

Chỉ hiện khi đang ở trong git repository.

Màu: Vàng.

------

# ⚙ Alias có sẵn

- `ll` → ls -lah
- `np` → mở Notepad Windows
- `ex` → mở Explorer
- `wslhome` → về thư mục cấu hình

------

# 🔄 Cập nhật cấu hình sau này

Sau khi chỉnh `bashrc_liem`:

```
bash install.sh
```

------

# 🧘 Triết lý thiết kế

Phong cách:

- Tối giản
- Không rườm rà
- Hiển thị thông tin cần thiết
- Thiền nhưng vẫn Dev
- Nhẹ – không ảnh hưởng hiệu suất

------

# 📦 Backup

File backup gốc:

```
~/.bashrc.bak_liem
```

Khôi phục nếu cần:

```
cp ~/.bashrc.bak_liem ~/.bashrc
```

------

# 🏁 Hoàn tất

Anh đã có:

- Loading thiền
- Prompt kỹ thuật
- R aware
- Git aware
- RAM aware
- Time aware

------

Nếu anh muốn bản 3.0:

- Hiển thị Python venv
- Hiển thị Conda
- Hiển thị Docker context
- Hiển thị CPU load
- Hiển thị battery
- Loading animation mượt

Nói tôi nâng cấp tiếp 😄

# 1️⃣ Linux là gì?

Linux gồm 3 phần chính:

1. 🧠 Kernel (nhân hệ điều hành)
2. 📁 File system
3. 🖥 Shell (bash)

Trong WSL:

- Windows = hệ điều hành chính
- WSL = Linux chạy bên trong

------

# 2️⃣ Cấu trúc thư mục Linux

Khác Windows.

Windows:

```
C:\Users\...
```

Linux:

```
/
├── home
├── etc
├── usr
├── var
├── bin
```

------

## 📂 Thư mục quan trọng cho anh

### 🏠 Home của anh:

```
/home/o_hanh_iem
```

Shortcut:

```
~
```

------

### 💽 Ổ Windows trong WSL:

```
/mnt/c
/mnt/d
```

Ví dụ:

```
/mnt/d/GitHub
```

------

# 3️⃣ Lệnh cơ bản

## 📁 Xem file

```
ls
ls -lah
```

------

## 📂 Di chuyển thư mục

```
cd folder
cd ..
cd ~
```

------

## 📄 Xem nội dung file

```
cat file.txt
less file.txt
```

------

## ✏ Chỉnh sửa file

```
nano file.txt
```

Hoặc:

```
notepad.exe file.txt
```

------

## 📦 Cài phần mềm

```
sudo apt update
sudo apt install package_name
```

------

## 🔍 Tìm kiếm

```
grep "text" file.txt
```

------

## ⚙ Quyền file

```
chmod +x script.sh
```

------

# 4️⃣ Khái niệm quan trọng

## 🔹 File không có đuôi bắt buộc

Windows:

```
file.txt
```

Linux:

```
file
```

Không cần .txt.

------

## 🔹 Mọi thứ là file

- File
- Thư mục
- Process
- Device
- Memory

------

## 🔹 Root (admin)

```
sudo command
```

------

# 5️⃣ Bash là gì?

Bash là shell.

Nó đọc file:

```
~/.bashrc
```

Mỗi lần mở WSL → bash đọc file này.

Anh đã custom rồi 👍

------

# 6️⃣ Process trong Linux

Xem process:

```
top
```

Xem memory:

```
free -h
```

------

# 7️⃣ Hệ thống quyền

Linux có:

```
r w x
```

Ví dụ:

```
-rwxr-xr-x
```

------

# 8️⃣ Biến môi trường

Xem:

```
echo $PATH
```

------

# 9️⃣ Pipe (rất quan trọng)

Ví dụ:

```
ls -lah | grep ".R"
```

Pipe = chuyển output sang lệnh khác.

------

# 🔟 Script cơ bản

Tạo file:

```
script.sh
```

Nội dung:

```
#!/bin/bash
echo "Hello"
```

Chạy:

```
chmod +x script.sh
./script.sh
```

------

# 🎯 Với anh nên tập trung 5 thứ

1. File system
2. Git trong Linux
3. grep / sed / awk
4. bash scripting
5. quyền file
