# 🧘 WSL – Liêm Environment Setup (Professional Build)

## 📌 Tổng kết buổi thiết lập hệ thống

Hôm nay chúng ta đã hoàn thành việc xây dựng một môi trường làm việc chuyên nghiệp cho:

- WSL Ubuntu 24.04
- GitHub SSH authentication
- R Linux + R Windows song song
- Prompt tùy biến theo phong cách cá nhân
- Function tự động commit/push
- Auto SSH agent
- Workspace chuẩn hóa

Đây không còn là môi trường mặc định nữa — mà là một môi trường dev được cá nhân hóa, sạch, ổn định và có hệ thống.

------

# 🏗 1. Cấu trúc môi trường hiện tại

## 🖥 Windows

- RStudio Desktop (R 4.5.2 ucrt)

- PowerShell

- Workspace chính:

  ```
  D:/GitHub/wsl
  ```

## 🐧 WSL

- Ubuntu 24.04
- User: `wsl_l`
- R Linux: 4.3.3
- Git cấu hình qua SSH
- Prompt tùy biến Liêm 2.x
- SSH agent tự động khởi động

------

# 🔐 2. GitHub Authentication – Chuyển từ HTTPS sang SSH

## Trước đây

- Dùng HTTPS

- GitHub không còn cho password authentication

- Push bị lỗi:

  ```
  Invalid username or token
  ```

## Đã làm

### 1️⃣ Tạo SSH key

```
ssh-keygen -t ed25519 -C "liem20k@gmail.com"
```

### 2️⃣ Add key vào GitHub

Settings → SSH and GPG keys → New SSH key

### 3️⃣ Test

```
ssh -T git@github.com
```

Thành công:

```
Hi henrydoth!
```

### 4️⃣ Đổi remote

```
git remote set-url origin git@github.com:henrydoth/wsl.git
```

------

## ✅ Kết quả

- Không cần nhập password
- Push/pull hoạt động tự động
- Môi trường chuyên nghiệp

------

# ⚙ 3. Tùy biến Bash Prompt

## Prompt hiển thị:

```
09:20:37 532/11919MB [R 4.3.3] wsl_l@liem-pchome /mnt/d/GitHub/wsl (main)
❯
```

### Bao gồm:

| Thành phần        | Ý nghĩa                      |
| ----------------- | ---------------------------- |
| 09:20:37          | Thời gian                    |
| 532/11919MB       | RAM used/total               |
| [R 4.3.3]         | Chỉ hiển thị khi ở R project |
| wsl_l@liem-pchome | user@host                    |
| path              | thư mục hiện tại             |
| (main)            | git branch                   |

------

# 🔁 4. Auto SSH Agent

Thêm vào `.bashrc`:

- Tự khởi động ssh-agent nếu chưa có
- Tự add id_ed25519 nếu chưa add

Kết quả:

- Mở terminal là `git push` chạy ngay
- Không phải nhập lại password

------

# 🚀 5. Function gp()

Thay vì dùng alias git rời rạc, ta tạo function:

```
gp "message"
```

Thực hiện:

- git add -A
- git commit (timestamp + user)
- git push

Ví dụ commit:

```
2026-02-21 09:12 | wsl_l | update prompt config
```

### Ưu điểm

- Không commit rỗng
- Có timestamp
- Có user
- Không cần nhớ 3 lệnh

------

# ⚠ 6. Lưu ý quan trọng (RStudio & CRLF)

Đây là phần quan trọng nhất trong buổi hôm nay.

## ❌ Vấn đề

Khi chỉnh `.bashrc` bằng RStudio Windows:

File được lưu với:

```
CRLF
```

Trong Linux, bash cần:

```
LF
```

Lỗi xảy ra:

```
syntax error near unexpected token $'{\r''
```

------

## ✅ Cách sửa

Trong WSL:

```
sed -i 's/\r$//' ~/.bashrc
```

------

## 📌 Nguyên tắc vàng

Nếu chỉnh file Linux bằng Windows:

1. Line Endings = LF
2. Encoding = UTF-8
3. Sau khi lưu → luôn chạy:

```
sed -i 's/\r$//' ~/.bashrc
```

------

# 🔄 7. Phân biệt môi trường

| Lệnh             | Chạy ở đâu      |
| ---------------- | --------------- |
| wsl              | PowerShell      |
| source ~/.bashrc | WSL             |
| git push         | WSL             |
| getwd()          | R               |
| file.edit()      | RStudio Windows |

------

## Sai phổ biến hôm nay

Chạy `wsl` bên trong WSL:

```
Command 'wsl' not found
```

Vì `wsl` là lệnh Windows, không phải Linux.

------

# 🧠 8. Kiến thức học được hôm nay

### ✔ Git SSH setup

### ✔ Remote change

### ✔ CRLF vs LF

### ✔ Bash prompt customization

### ✔ Function vs alias

### ✔ ssh-agent lifecycle

### ✔ WSL user management

### ✔ .bashrc cấu trúc

### ✔ Interactive shell detection

### ✔ Workspace auto jump

------

# 🧘 9. Triết lý hệ thống

Môi trường dev không chỉ là tool.

Nó là:

- Trạng thái tinh thần
- Nhịp làm việc
- Sự rõ ràng
- Tính nhất quán

Prompt hiển thị RAM, R version, branch…
 Không phải để “đẹp”
 Mà để luôn ý thức mình đang ở đâu.

------

# 📁 10. Cấu trúc làm việc chuẩn

```
D:/GitHub/
    ├── wsl/
    ├── dtcs25_sstt/
    ├── nejm/
    ├── chu_vang_sanh/
```

WSL mount:

```
/mnt/d/GitHub/
```

------

# 🔥 11. Checklist sau mỗi thay đổi hệ thống

-  source ~/.bashrc
-  git status
-  ssh-add -l
-  test gp
-  kiểm tra LF nếu có lỗi

------

# 🏁 12. Trạng thái hiện tại

Bạn đang có:

- WSL chuẩn
- SSH chuẩn
- Prompt cá nhân hóa
- Function commit thông minh
- Workspace chuẩn
- Không lỗi CRLF
- Không password GitHub
- Hệ thống sạch

Đây là một môi trường dev thực thụ.

------

# 🌿 Kết luận

Hôm nay không chỉ là setup.

Đây là:

- Luyện tư duy hệ thống
- Làm chủ môi trường
- Hiểu sâu Linux
- Hiểu rõ Git
- Phân biệt Windows vs WSL

Và quan trọng nhất:

Bạn không còn dùng máy theo cách mặc định nữa.
 Bạn đang điều khiển nó.

------

# 🌼 WSL – PureLand Terminal by Liêm

> 🌼 Nam Mô A Di Đà Phật  
> ✨ Hào quang vô lượng chiếu tâm  
> WSL · an trú · tĩnh sáng · làm việc như tu tập

Biến WSL thành:
- 🌈 Terminal có **Chú Vãng Sinh màu sắc**
- 🎮 Linux playground: cowsay, tàu lửa, tetris, matrix…
- 🔁 Đồng bộ GitHub – máy nào cũng dùng lại được

---

# 🚀 1. Cài PureLand Greeting

## Tạo symlink chung

```bash
ln -sfn /mnt/d/GitHub/wsl ~/wsl
