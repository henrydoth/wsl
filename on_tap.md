 Bước 1: Tạo và chỉnh sửa file bằng vim
bash
Copy code
cd /mnt/d/GitHub/wsl
vim on_tap.md
📄 Gợi ý nội dung (dán vào vim)
Nhấn i để vào chế độ soạn thảo, rồi dán:

markdown
Copy code
# Ôn tập Git với WSL

## Cấu hình Git ban đầu

```bash
git config --global user.name "henrydoth"
git config --global user.email "liem20k@gmail.com"
Tạo repository Git trong WSL
bash
Copy code
cd /mnt/d/GitHub
mkdir wsl
cd wsl
git init
Thêm file đầu tiên
bash
Copy code
echo "# Đây là repo học Git bằng WSL" > README.md
git add README.md
git commit -m "Thêm README.md ban đầu"
Kết nối GitHub (HTTPS)
bash
Copy code
git remote add origin https://github.com/henrydoth/wsl.git
git push -u origin main
Ghi nhớ tài khoản
bash
Copy code
git config --global credential.helper store
File được lưu trong ~/.git-credentials.

yaml
Copy code

Sau đó nhấn `Esc`, rồi gõ `:wq` để lưu và thoát.

---

## ✅ Bước 2: Commit và push lên GitHub

```bash
git add on_tap.md
git commit -m "Thêm file on_tap.md ôn tập Git WSL"
git push origin main
✅ Kiểm tra trên GitHub:
Truy cập: https://github.com/henrydoth/wsl
→ Bạn sẽ thấy file on_tap.md xuất hiện!


