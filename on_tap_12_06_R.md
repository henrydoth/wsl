ôn lại toàn bộ quá trình bạn vừa thực hiện rất hiệu quả! Dưới đây là phần tổng kết:

✅ 1. Cài đặt R thành công trong WSL
Bạn đã dùng đúng lệnh:

bash
Copy code
sudo apt install r-base
R đã cài bản mới nhất:

bash
Copy code
R version 4.5.0 (2025-04-11)
✅ 2. Thực hành chạy R từ dòng lệnh
Bạn đã chạy thành công R nội bộ bằng lệnh:

bash
Copy code
R
Dùng q() để thoát khỏi R và chọn [y] để lưu workspace.

✅ 3. Viết và chạy script R
Dùng nano để viết script:

bash
Copy code
nano b1.R
hoặc

bash
Copy code
nano day01_mean_sd.R
Nội dung file day01_mean_sd.R (mẫu tốt):

r
Copy code
# Bài ôn: Tính trung bình và độ lệch chuẩn
x <- c(12, 15, 18, 20, 25)
cat("Giá trị:", x, "\n")
cat("Trung bình =", mean(x), "\n")
cat("Độ lệch chuẩn =", sd(x), "\n")
Chạy script bằng:

bash
Copy code
Rscript day01_mean_sd.R
✅ 4. Gỡ lỗi cú pháp
Bạn từng gặp lỗi:

r
Copy code
x <0 c(1, 2, 3)
👉 Viết đúng là:

r
Copy code
x <- c(1, 2, 3)
✅ Tips bổ sung khi làm việc với R trong WSL
Thao tác	Lệnh
Chạy script .R	Rscript filename.R
Mở file	nano filename.R
Kiểm tra R version	R --version
Thoát khỏi R	q()
Clear màn hình	Ctrl + L hoặc clear
Lưu file trong nano	Ctrl + O, Enter, rồi Ctrl + X

🧠 Bạn đã thành thạo các bước sau:
✅ Cài đặt R trong WSL
✅ Viết, lưu, và chạy script .R
✅ Hiểu cách debug và sửa lỗi lệnh
✅ Biết cách quản lý workspace và chạy Rscript

