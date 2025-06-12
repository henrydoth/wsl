## 📚 MỤC LỤC <a name="TopPage"></a>

- [🧾 Git Cheat Sheet – Quản lý nhánh (Branch Workflow)](#-git-cheat-sheet--quản-lý-nhánh-branch-workflow)
  - [🎯 Mục tiêu](#-mục-tiêu)
  - [🚀 Tạo và chuyển sang nhánh mới](#-tạo-và-chuyển-sang-nhánh-mới)
  - [🛠️ Làm việc trên nhánh `lo_bra_l1`](#️-làm-việc-trên-nhánh-lo_bra_l1)
  - [🔁 Quay về nhánh chính và gộp thay đổi](#-quay-về-nhánh-chính-và-gộp-thay-đổi)
  - [☁️ Đẩy lên GitHub](#️-đẩy-lên-github)
  - [🧹 Xoá nhánh local sau khi merge (tuỳ chọn)](#-xoá-nhánh-local-sau-khi-merge-tuỳ-chọn)
  - [🧪 Kiểm tra trạng thái \& lịch sử](#-kiểm-tra-trạng-thái--lịch-sử)
    - [✅ Gợi ý](#-gợi-ý)
- [Không gian làm việc](#không-gian-làm-việc)
- [Diary 23/5 7: 17](#diary-235-7-17)
  - [git branch feature1](#git-branch-feature1)
- [git log xem lịch sử với ngày tháng](#git-log-xem-lịch-sử-với-ngày-tháng)
- [Quan trọng](#quan-trọng)
- [Cấu hình .gitignore](#cấu-hình-gitignore)
- [Dùng 1 lệnh](#dùng-1-lệnh)
- [lệnh cần nhớ khi làm việc branch liem\_feature](#lệnh-cần-nhớ-khi-làm-việc-branch-liem_feature)
- [BẮT ĐẦU: Làm việc trên liem\_feature](#bắt-đầu-làm-việc-trên-liem_feature)
- [✅ KẾT THÚC: Merge vào main](#-kết-thúc-merge-vào-main)
- [Làm việch trên branch](#làm-việch-trên-branch)
- [Clone 1 repository có sẵn trên github về máy](#clone-1-repository-có-sẵn-trên-github-về-máy)
- [Popular command in mac terminal](#popular-command-in-mac-terminal)
- [cài Homebrew trên macOS](#cài-homebrew-trên-macos)
- [Kiểm tra terminal mặc định của Mac](#kiểm-tra-terminal-mặc-định-của-mac)
- [Tạo cá Alias terminal mở file words, set đường dẫn mặc định mac](#tạo-cá-alias-terminal-mở-file-words-set-đường-dẫn-mặc-định-mac)
- [Alias](#alias)
- [Quy trình git file readme đầy đủ](#quy-trình-git-file-readme-đầy-đủ)
- [Lệnh bash cần thiết để tìm kiếm nội dung](#lệnh-bash-cần-thiết-để-tìm-kiếm-nội-dung)
- [Cài đặt thư mục mặc định mac terminal là dtcs25\_sstt](#cài-đặt-thư-mục-mặc-định-mac-terminal-là-dtcs25_sstt)
- [📄 CHEAT SHEET: Thiết lập Git Bash + Alias tiện dụng cho RStudio](#-cheat-sheet-thiết-lập-git-bash--alias-tiện-dụng-cho-rstudio)
- [📁 Cheat Sheet: Tạo alias vĩnh viễn trong Git Bash để mở file Word](#-cheat-sheet-tạo-alias-vĩnh-viễn-trong-git-bash-để-mở-file-word)
- [1️⃣ Mở file cấu hình bashrc](#1️⃣-mở-file-cấu-hình-bashrc)
- [2️⃣ Thêm dòng alias vào cuối file (điều chỉnh đường dẫn Word nếu cần)](#2️⃣-thêm-dòng-alias-vào-cuối-file-điều-chỉnh-đường-dẫn-word-nếu-cần)
- [💡 Gợi ý: kiểm tra đúng đường dẫn WINWORD.EXE bằng cách thử lệnh sau:](#-gợi-ý-kiểm-tra-đúng-đường-dẫn-winwordexe-bằng-cách-thử-lệnh-sau)
- ["/c/Program Files/Microsoft Office/root/Office16/WINWORD.EXE"](#cprogram-filesmicrosoft-officerootoffice16winwordexe)
- [3️⃣ Lưu và đóng nano: Ctrl + O → Enter → Ctrl + X](#3️⃣-lưu-và-đóng-nano-ctrl--o--enter--ctrl--x)
- [4️⃣ Áp dụng alias mới](#4️⃣-áp-dụng-alias-mới)
- [✅ Giờ bạn có thể chạy:](#-giờ-bạn-có-thể-chạy)
- [→ Mở ngay file Word đã chỉ định 🚀](#-mở-ngay-file-word-đã-chỉ-định-)
- [🚀 Cheat Sheet: Tạo alias vĩnh viễn trong Git Bash (Windows) w1 mơ file words dtcs](#-cheat-sheet-tạo-alias-vĩnh-viễn-trong-git-bash-windows-w1-mơ-file-words-dtcs)
  - [✅ Toàn bộ khối lệnh](#-toàn-bộ-khối-lệnh)
  - [🚀 Cách sử dụng alias](#-cách-sử-dụng-alias)
  - [📌 Lưu ý](#-lưu-ý)
- [Git batch command](#git-batch-command)
  - [Nap thư mục mặc định cho gitbatch](#nap-thư-mục-mặc-định-cho-gitbatch)
- [🐙 Git Cheat Sheet hôm 1805](#-git-cheat-sheet-hôm-1805)
  - [🔍 Trạng thái hiện tại](#-trạng-thái-hiện-tại)
  - [📥 Kéo dữ liệu mới từ GitHub](#-kéo-dữ-liệu-mới-từ-github)
  - [📤 Đẩy thay đổi lên GitHub](#-đẩy-thay-đổi-lên-github)
  - [📄 Xem chi tiết commit gần nhất](#-xem-chi-tiết-commit-gần-nhất)
  - [🕓 Xem lịch sử commit ngắn gọn](#-xem-lịch-sử-commit-ngắn-gọn)
  - [🔍 So sánh thay đổi giữa 2 commit](#-so-sánh-thay-đổi-giữa-2-commit)
  - [💡 Tắt chế độ phân trang (less)](#-tắt-chế-độ-phân-trang-less)
  - [✏️ Xem ai sửa dòng nào](#️-xem-ai-sửa-dòng-nào)
  - [📦 Clone repo về máy](#-clone-repo-về-máy)
  - [🏷️ Tạo nhánh mới \& chuyển sang](#️-tạo-nhánh-mới--chuyển-sang)
  - [🔄 Chuyển về nhánh chính](#-chuyển-về-nhánh-chính)
  - [🗑️ Xóa file khỏi Git](#️-xóa-file-khỏi-git)
  - [🧹 Hủy thay đổi chưa commit](#-hủy-thay-đổi-chưa-commit)
  - [🚪 Thoát khỏi chế độ `less`](#-thoát-khỏi-chế-độ-less)
  - [✅ Các bước đẩy thay đổi lên GitHub từ Git Bash.](#-các-bước-đẩy-thay-đổi-lên-github-từ-git-bash)
- [🧠 Git Cheat Sheet](#-git-cheat-sheet)
- [Lệnh Git cơ bản](#lệnh-git-cơ-bản)
  - [terminal windows](#terminal-windows)
- [Diary](#diary)
- [Nhật ký khám bệnh](#nhật-ký-khám-bệnh)
  - [250517 sat](#250517-sat)
- [Tho Đường](#tho-đường)
  - [🏯 Tĩnh Dạ Tứ – Lý Bạch](#-tĩnh-dạ-tứ--lý-bạch)
    - [📖 Âm Hán Việt](#-âm-hán-việt)
    - [🈶 Phồn thể](#-phồn-thể)
    - [🇻🇳 Dịch thơ tiếng Việt](#-dịch-thơ-tiếng-việt)
  - [🕊️ Bạch Lộ – Bạch Cư Dị (白居易)](#️-bạch-lộ--bạch-cư-dị-白居易)
    - [📖 Âm Hán Việt](#-âm-hán-việt-1)
    - [🈶 Phồn thể](#-phồn-thể-1)
    - [🇻🇳 Dịch thơ tiếng Việt (tham khảo)](#-dịch-thơ-tiếng-việt-tham-khảo)
  - [🏯 Hoàng Hạc Lầu – Thôi Hiệu (崔顥)](#-hoàng-hạc-lầu--thôi-hiệu-崔顥)
    - [📖 Âm Hán Việt](#-âm-hán-việt-2)
    - [🈶 Phồn thể](#-phồn-thể-2)
    - [🇻🇳 Dịch thơ tiếng Việt (Bản dịch của Tản Đà)](#-dịch-thơ-tiếng-việt-bản-dịch-của-tản-đà)
- [Sửa đề tài DTT](#sửa-đề-tài-dtt)
  - [250518 sung](#250518-sung)
- [Sửa đề tài SSTT.](#sửa-đề-tài-sstt)
- [Bát cương trong YHCT](#bát-cương-trong-yhct)
  - [Tứ chẩn](#tứ-chẩn)
- [Bệnh đau lưng](#bệnh-đau-lưng)
  - [Giải phẫu](#giải-phẫu)
  - [Sinh lý](#sinh-lý)
  - [Bệnh học YHCT](#bệnh-học-yhct)
# Các lệnh cần nhớ
-file.edit("~/.bash_profile")  <!-- mở trong r consol -->

- tetris -nomenu
-git commit -am "trò tetris readme" && git push
-làm script tự độbg add commit push- 
- Kiểm tra shell gì 
  echo $SHELL
- nano ~/.bashrc
- alias gp='Rscript /Users/mac/Documents/dtcs25_sstt/R/git_push.R'
- source ~/.bashrc    


| Loại khối | Tên               | 
| --------- | ----------------- | 
| `#I`      | Dài (I shape)     | 
| `#J`      | Chữ J             | 
| `#L`      | Chữ L             | 
| `#O`      | Vuông (square)    | 
| `#S`      | Zig-zag ngược     | 
| `#T`      | Hình chữ T        | 
| `#Z`      | Zig-zag thường    | 
| **Sum**   | Tổng khối đã dùng | 


# 🧾 Git Cheat Sheet – Quản lý nhánh (Branch Workflow)

## 🎯 Mục tiêu
Tạo nhánh mới để làm việc độc lập, sau đó gộp (merge) vào `main` và đẩy (push) lên GitHub.

---

## 🚀 Tạo và chuyển sang nhánh mới

```bash
git checkout -b lo_bra_l1
```

> Lệnh này sẽ tạo nhánh mới tên `lo_bra_l1` và chuyển sang nhánh đó.

---

## 🛠️ Làm việc trên nhánh `lo_bra_l1`

- Chỉnh sửa nội dung
- Chạy code, lưu file

Sau đó, lưu thay đổi:

```bash
git add .
git commit -m "Cập nhật nội dung trên nhánh lo_bra_l1"
```

---

## 🔁 Quay về nhánh chính và gộp thay đổi

```bash
git checkout main
git merge lo_bra_l1
```

> Gộp tất cả thay đổi từ `lo_bra_l1` vào `main`.

---

## ☁️ Đẩy lên GitHub

```bash
git push origin main
```

> Cập nhật nhánh `main` trên GitHub để các cộng sự (như BS Liêm) có thể xem và tiếp tục làm.

---

## 🧹 Xoá nhánh local sau khi merge (tuỳ chọn)

```bash
git branch -d lo_bra_l1
```

> Xoá nhánh đã dùng xong để gọn repo local.

---

## 🧪 Kiểm tra trạng thái & lịch sử

```bash
git status
git log --oneline --graph --all
```

> Xem nhanh nhánh đang đứng và lịch sử các lần commit.

---

### ✅ Gợi ý
- Đặt tên nhánh rõ ràng, ví dụ: `lo_bra_l1`, `phan_tich_MMSE`, `viet_ban_luan`.
- Luôn `commit` trước khi `merge` để tránh mất dữ liệu.

# Không gian làm việc
- Làm quản lý để đánh bóng bản thân:
- git add -u
Thêm các tệp có nội dung được chỉnh sửa (KHÔNG PHẢI TỆP MỚI) vào vùng chỉ mục. Lệnh này tương tự với các việc mà lệnh git commit -a thực hiện để chuẩn bị cho việc thực hiện một commit.
- git checkout file(s)... or dir
Updates the file or directory in the workspace. Does NOT switch branches.

- git reset --hard
Matches the workspace and index to the local tree. WARNING: Any changes to tracked files in the working tree since commit are lost. Use this if merging has resulted in conflicts and you'd like to start over. Pass ORIG_HEAD to undo the most recent successful merge and any changes after.

- git reset --hard remote/branch
Reset local repo and working tree to match a remote-tracking branch. Use reset ‑‑hard origin/main to throw away all commits to the local main branch. Use this to start over on a failed merge.


# Diary 23/5 7: 17
- Tạo branch và merge
- 🧠 Git Branch & Merge Cheat Sheet (dựa theo dự án `dtcs25_sstt`)

- 📍 1. Kiểm tra trạng thái repo

git status
- 📦 2. Thêm và commit file

git add .  
git commit -m "nội dung commit"

Ví dụ:  
git commit -m "version 1"

- 🌱 3. Tạo nhánh mới
git branch feature1
---
- 🔀 4. Chuyển sang nhánh mới

git checkout feature1
-  🧾 5. Xem log toàn bộ commit các nhánh

git log --all --graph

- Hoặc nếu đã tạo alias:  
git logg --all --graph

-  6. Commit thay đổi trong nhánh feature

git add .  
git commit -m "feature commit 1"  
git commit -m "feature commit 2"

-  🔁 7. Quay lại nhánh `main`

git checkout main

-  8. (Tuỳ chọn) Commit thêm trong `main`

git add .  
git commit -m "bug fix"

-  🔗 9. Merge nhánh `feature1` vào `main`

git merge feature1 -m "merge feature1"

- 🧹 10. (Tuỳ chọn) Xoá nhánh feature đã merge

git branch -d feature1

-  🚀 11. Push tất cả lên GitHub

git push origin main

- 🧩 Bonus: Tạo alias `logg` đẹp gọn

git config --global alias.logg "log --oneline --all --graph --decorate"


# git log xem lịch sử với ngày tháng 
  
    - 1 lệnh quan trong
  git log --oneline --graph --decorate --all
  đủ thời gian
  - có thêm thời gian
  git log --graph --all --decorate \
  --pretty=format:"%C(yellow)%h%Creset %Cgreen%cd%Creset %Cblue[%an]%Creset %C(auto)%d %s" \
  --date=format-local:'%a, %d/%m %H:%M'
- tạo alias logg
  git config --global alias.logg "log --graph --all --decorate --pretty=format:'%C(yellow)%h%Creset %Cgreen%cd%Creset %Cblue[%an]%Creset %C(auto)%d %s' --date=format-local:'%a, %d/%m %H:%M'"

    - xoá file khỏi git
  git rm --cached bs_loan_quarto_output.docx
  - Thêm vào .gitignore nếu chưa có
  bs_loan_quarto_output.docx
  *.docx

# Quan trọng
*# Bắt đầu lại từ main
git checkout liem_feature
git fetch origin
git reset --hard origin/main

*# Làm việc chính thức...
git add .
git commit -m "Cập nhật chính thức"

*# Đẩy lên GitHub
git push origin liem_feature --force

*# Khi đã ổn, gộp vào main
git checkout main
git pull origin main
git merge liem_feature
git push origin main

[⬆️ Quay lại Mục lục](#TopPage)

# Cấu hình .gitignore
.Rproj.user
.Rhistory
.RData
.Ruserdata
*.docx
*# Ignore all .docx by default


*# Ngoại lệ: theo dõi file gốc, đề cương
!source/sstt_dtcs_quato_words_input.docx
!Loan de cuong.docx

*# Không theo dõi các file tạm thời bắt đầu bằng ~$ (Windows)
~$*
# Dùng 1 lệnh 
- Một lệnh push gộp ngắn gọn nhất.
  
git commit -am "update readme" && git push

- muốn đẩy toàn bộ nội dung hiện tại của liem_feature lên ghi đè main, thì:
  
  git push origin liem_feature:main --force


# lệnh cần nhớ khi làm việc branch liem_feature
- Làm nhánh mới
  git checkout main
  git pull origin main
  git checkout -b liem_feature

- Làm việc → commit → push
git commit -am "..." && git push origin liem_feature

- Merge khi xong (trên GitHub Pull Request)

- Sau khi merge
git checkout main
git pull origin main

[⬆️ Quay lại Mục lục](#TopPage)



# BẮT ĐẦU: Làm việc trên liem_feature

- B1: Mở dự án RStudio (.Rproj)

- B2: Chuyển sang nhánh làm việc
  
git checkout liem_feature

- B3: Kéo nhánh mới nhất (nếu cần)
  
git pull origin liem_feature

- B4: Chỉnh sửa file (Rmd, qmd, script...)

- B5: Commit thay đổi
  
git add .

git commit -m "Cập nhật nội dung báo cáo ngày DD-MM"

- B6: Đẩy lên GitHub
- 
git push origin liem_feature

[⬆️ Quay lại Mục lục](#TopPage)


# ✅ KẾT THÚC: Merge vào main
- B1: Chuyển sang nhánh main
git checkout main

- B2: Kéo bản mới nhất từ GitHub
git pull origin main

- B3: Merge từ nhánh liem_feature vào main
git merge liem_feature

- B4: Đẩy main lên GitHub
git push origin main
[⬆️ Quay lại Mục lục](#TopPage)






# Làm việch trên branch
- git branch <!-- kết quả - * cho biết bạn đang ở nhánh liem_feature -->
- git status <!-- kết quả - On branch liem_feature -->
- git diff  <!-- xem nội dung đã chỉnh sửa trong file (trước khi commit) -->
- git commit -am "BS Liêm cập nhật nội dung Quarto"  <!--  gộp git add và git commit thành một lệnh duy nhấ argument là am -->
- git push origin liem_feature




# Clone 1 repository có sẵn trên github về máy
- cd ~/Documents
- git clone https://github.com/henrydoth/bs_Loan.git
- cd bs_Loan
- ls- 
- open .  <!-- Mở dự án bằng Finder -->
- code .   <!-- mở bằng VS Code -->


# Popular command in mac terminal
- cal
- date
- date "+%H:%M:%S" <!-- kiểm tra giờ -->
- yes "I like this" <!-- vòng lặp vô tận tới khi cotrl + c -->
- fortune
cowsay 'Hello from macOS!'
- figlet Hello
- tetris
  sl
- fortune | cowsay -f tux
- fortune | cowsay | lolcat

fortune tao | cowsay | lolcat



# cài Homebrew trên macOS
- hướng dẫn web
- fortune, cowsay, figlet

# Kiểm tra terminal mặc định của Mac
- echo $0  <!-- kiểm tra shell -->

- echo $SHELL
  - /bin/bash
- chsh -s /bin/bash <!-- chuyển mặc định thành zsh, nhập password và reset terminal -->
  - nhập Password cho mac: xong khởi động terminal
- echo $SHELL
  - /bin/zsh
- chsh -s /bin/bash <!-- chuyển mặc định thành bash, nhập password và reset terminal -->
- echo $SHELL <!-- kiểm tra lại -->
  


# Tạo cá Alias terminal mở file words, set đường dẫn mặc định mac
- nano ~/.bash_profile

cd ~/Documents/dtcs25_sstt
alias nj="~/nj.sh"
alias dt='quarto render sstt25_dtcs_quato_words_output.qmd && open sstt25_dtcs_quato_words_output.docx'
alias w1='open "/Users/mac/Documents/dtcs25_sstt/sstt25_dtcs_quato_words_output.docx"'



- control + O enter control + x
- source ~/.bash_profile
- w1



# Alias
- alias nj="~/nj.sh"
- alias dt='quarto render sstt25_dtcs_quato_words_output.qmd && open - sstt25_dtcs_quato_words_output.docx'

# Quy trình git file readme đầy đủ
- git status
- git add README.md
- git commit -m "Cập nhật"
- git push origin main
  
**Dùng 1 lệnh duy nhất để push ( nếu làm chủ được sự thay đổi)**
- git commit -am "Cập nhật nội dung mới" && git push
** Nếu muốn đè lên**
git push --force

[⬆️ Quay lại Mục lục](#TopPage)

# Lệnh bash cần thiết để tìm kiếm nội dung

- ls -t | head -n 5
- cat README.md
- head -n 50 README.md
- tail -n 50 README.md
- grep "Người xưa" README.md
- grep -C 20 "Người xưa" README.md
- grep "黃鶴" README.md
- grep -C 20 "黃鶴" README.md
- ls -t *.qmd *.md *.bib *.R 2>/dev/null | head -n 10
- ls -t *.qmd | head -n 5
  
[⬆️ Quay lại Mục lục](#TopPage)





# Cài đặt thư mục mặc định mac terminal là dtcs25_sstt
nano ~/.zprofile

cd /Users/Mac/Documents/dtcs25_sstt
Dùng file .Rprofile để tự động setwd() khi mở R
vào terminal mac
nano ~/.Rprofile
thêm dòng
setwd("/Users/Mac/Documents/dtcs25_sstt")


[⬆️ Quay lại Mục lục](#TopPage)




# 📄 CHEAT SHEET: Thiết lập Git Bash + Alias tiện dụng cho RStudio

 1️⃣ Đặt Git Bash làm terminal mặc định:
Mở RStudio → Tools → Global Options → Terminal
Chọn: Custom → Dán đường dẫn:
"C:\Program Files\Git\bin\bash.exe"

 2️⃣ Mở (hoặc tạo) file cấu hình alias:
nano ~/.bashrc

3️⃣ Thêm các alias sau vào cuối ~/.bashrc:
alias w1='"/c/Program Files/Microsoft Office/root/Office16/WINWORD.EXE" "/d/GitHub/dtcs25_sstt/sstt25_dtcs_quato_words_output.docx"'   # 📄 Mở file Word
alias gpush='git add . && git commit -m "update" && git push'                                       # 🔁 Git add + commit + push
alias qbuild='quarto render doc.qmd --to docx'                                                       # 📤 Render Quarto .qmd thành Word
alias qview='quarto preview'                                                                         # 👀 Xem trước Quarto HTML
alias proj='explorer.exe /d/GitHub/dtcs25_sstt'                                                      # 🗂 Mở thư mục dự án

4️⃣ Lưu & áp dụng alias mới:
source ~/.bashrc

 5️⃣ Dùng trong Terminal RStudio:
 w1     → Mở Word
gpush  → Push Git nhanh
qbuild → Render Word
qview  → Preview HTML
proj   → Mở thư mục dự án



[⬆️ Quay lại Mục lục](#TopPage)

# 📁 Cheat Sheet: Tạo alias vĩnh viễn trong Git Bash để mở file Word

# 1️⃣ Mở file cấu hình bashrc
nano ~/.bashrc

# 2️⃣ Thêm dòng alias vào cuối file (điều chỉnh đường dẫn Word nếu cần)
alias w1='"/c/Program Files/Microsoft Office/root/Office16/WINWORD.EXE" "/d/GitHub/dtcs25_sstt/sstt25_dtcs_quato_words_output.docx"'

# 💡 Gợi ý: kiểm tra đúng đường dẫn WINWORD.EXE bằng cách thử lệnh sau:
# "/c/Program Files/Microsoft Office/root/Office16/WINWORD.EXE"

# 3️⃣ Lưu và đóng nano: Ctrl + O → Enter → Ctrl + X

# 4️⃣ Áp dụng alias mới
source ~/.bashrc

# ✅ Giờ bạn có thể chạy:
w1
# → Mở ngay file Word đã chỉ định 🚀

[⬆️ Quay lại Mục lục](#TopPage)

# 🚀 Cheat Sheet: Tạo alias vĩnh viễn trong Git Bash (Windows) w1 mơ file words dtcs

Chạy **một khối lệnh duy nhất bên dưới** trong Git Bash để:

- Tạo alias mở nhanh các dự án `.Rproj` và nhật ký Markdown
- Ghi alias vào `~/.bashrc`
- Nạp lại cấu hình ngay

## ✅ Toàn bộ khối lệnh

```bash
# Tạo alias cho các dự án và nhật ký
echo "alias dt1='code \"/d/GitHub/dtcs25_sstt/dtcs25_sstt.Rproj\"'" >> ~/.bashrc && \
echo "alias dt2='code \"/d/GitHub/duan_khac/duan_khac.Rproj\"'" >> ~/.bashrc && \
echo "alias nj='code \"/d/GitHub/notes/\$(date +%F).md\"'" >> ~/.bashrc && \
echo "alias njy='code \"/d/GitHub/notes/\$(date -d \\\"yesterday\\\" +%F).md\"'" >> ~/.bashrc && \
source ~/.bashrc
```

> 🛠 Gợi ý: thay đổi đường dẫn theo dự án của bạn nếu khác với ví dụ.

---

## 🚀 Cách sử dụng alias

| Lệnh     | Mục đích                                         |
|----------|--------------------------------------------------|
| `dt1`    | Mở dự án `dtcs25_sstt.Rproj` trong VS Code       |
| `dt2`    | Mở dự án `duan_khac.Rproj` trong VS Code         |
| `nj`     | Mở file nhật ký hôm nay `YYYY-MM-DD.md`          |
| `njy`    | Mở file nhật ký hôm qua `YYYY-MM-DD.md`          |

---

## 📌 Lưu ý

- Alias này sẽ luôn hoạt động trong mọi phiên Git Bash sau khi bạn thiết lập.
- Để chỉnh sửa lại, dùng: `nano ~/.bashrc`
- Sau khi chỉnh xong, nhớ chạy lại: `source ~/.bashrc`



# Git batch command
## Nap thư mục mặc định cho gitbatch 
nano ~/.bashrc
cd /d/GitHub/dtcs25_sstt
source ~/.bashrc

# 🐙 Git Cheat Sheet hôm 1805

## 🔍 Trạng thái hiện tại
```bash
git status
```
📂 Hiển thị trạng thái thư mục làm việc: file mới, file bị sửa đổi, chưa commit...

## 📥 Kéo dữ liệu mới từ GitHub
```bash
git pull
```
⬇️ Lấy bản cập nhật mới nhất từ nhánh `origin/main`.

## 📤 Đẩy thay đổi lên GitHub
```bash
git add .
git commit -m "Tin nhắn commit"
git push
```
⬆️ Thêm file, commit và push lên GitHub.

## 📄 Xem chi tiết commit gần nhất
```bash
git show HEAD
```
🧾 Xem nội dung thay đổi trong commit cuối cùng.

## 🕓 Xem lịch sử commit ngắn gọn
```bash
git log --oneline
git log -n 5 --oneline
```
🕵️ Hiển thị lịch sử commit ngắn và dễ đọc.

## 🔍 So sánh thay đổi giữa 2 commit
```bash
git diff abc123 def456 -- README.md
git diff abc123...def456 -- README.md
```
📊 So sánh nội dung khác nhau của file `README.md` giữa hai commit.

## 💡 Tắt chế độ phân trang (less)
```bash
git --no-pager show
```
💨 Không cần nhấn `q` để thoát khi xem log/show.

```bash
git config --global pager.show false
```
⚙️ Tắt vĩnh viễn trình phân trang của `git show`.

## ✏️ Xem ai sửa dòng nào
```bash
git blame README.md
```
🕵️‍♂️ Hiển thị tên người commit từng dòng trong file.

## 📦 Clone repo về máy
```bash
git clone https://github.com/user/repo.git
```
📥 Tải toàn bộ project từ GitHub.

## 🏷️ Tạo nhánh mới & chuyển sang
```bash
git checkout -b ten-nhanh-moi
```
🌿 Tạo nhanh một nhánh mới và chuyển ngay sang đó.

## 🔄 Chuyển về nhánh chính
```bash
git checkout main
```
↩️ Trở về nhánh `main`.

## 🗑️ Xóa file khỏi Git
```bash
git rm ten_file.txt
git commit -m "Xóa file"
```
❌ Xóa file ra khỏi Git và commit thay đổi.

## 🧹 Hủy thay đổi chưa commit
```bash
git checkout -- ten_file.txt
```
♻️ Khôi phục file về trạng thái commit gần nhất.

## 🚪 Thoát khỏi chế độ `less`
Khi đang xem `git log`, `git show` mà bị "kẹt":  
👉 **Nhấn phím `q` để thoát.**

---

📌 *Mẹo:* Có thể dùng `code .` trong VS Code để mở thư mục Git hiện tại nhanh chóng!

[⬆️ Quay lại Mục lục](#TopPage)

## ✅ Các bước đẩy thay đổi lên GitHub từ Git Bash.
🔹 1. Di chuyển vào thư mục dự án:
cd /d/GitHub/dtcs25_sstt
🔹 2. Kiểm tra trạng thái thay đổi:
git status
🔹 3. Thêm tất cả thay đổi:
git add .
📌 Nếu chỉ muốn thêm một file cụ thể, dùng git add README.md.
 4. Ghi lại thay đổi (commit):
git commit -m "Cập nhật nội dung README.md"
🔹 5. Đẩy lên GitHub:
git push origin main

✅ Xong! 🎉 Có thể kiểm tra trên GitHub để thấy thay đổi đã được cập nhật.
git status


[⬆️ Quay lại Mục lục](#TopPage)
# 🧠 Git Cheat Sheet


##📌 1. Kiểm tra trạng thái repo
git status

##📌 2. Thêm file vào vùng staging
git add <file>     # Thêm 1 file cụ thể
git add .          # Thêm toàn bộ thay đổi

##📌 3. Commit thay đổi với tin nhắn
git commit -m "Mô tả ngắn gọn"

##📌 4. Push lên GitHub (nhánh main)
git push origin main

##📌 5. Kéo thay đổi mới nhất từ GitHub
git pull origin main

##📌 6. Xem lịch sử commit
git log              # Dạng đầy đủ
git log --oneline    # Dạng ngắn gọn

##📌 7. Khôi phục file chưa commit
git restore <file>   # Khôi phục 1 file
git restore .        # Khôi phục toàn bộ

##📌 8. Xóa file khỏi Git (và staging)
git rm <file>

##📌 9. Đổi tên file
git mv ten_cu ten_moi

##📌 10. Kiểm tra địa chỉ remote
git remote -v

##📌 11. Quy trình Git cơ bản thường dùng
git status
git add .
git commit -m "Tóm tắt thay đổi"
git push origin main


[⬆️ Quay lại Mục lục](#TopPage)

# Lệnh Git cơ bản
git pull      
git log --oneline   
Chỉnh sửa
git status
git commit -m "Thêm file test.txt thực hành nano"      
git push origin main     

## terminal windows
D:\GitHub\dtcs25_sstt\dtcs_dtt\dtcs_dtt.Rproj
D:\GitHub\dtcs25_sstt\dtcs_dtt\dtcs_dtt.Rproj

# Diary
250517 sat
My friend from Hanoi visited us , we had dinner and cafe. It is great.
250518 sun: 
- Stay at home study git hub



[⬆️ Quay lại Mục lục](#TopPage)

# Nhật ký khám bệnh 
## 250517 sat
- Bệnh nhân đau lưng khối cơ cạnh cột sống 3-5 châm cứu, chườm ngải, bấm huyệt.
- Review treatment menthod

[⬆️ Quay lại Mục lục](#TopPage)

# Tho Đường
## 🏯 Tĩnh Dạ Tứ – Lý Bạch
### 📖 Âm Hán Việt

**Sàng tiền minh nguyệt quang,**  
**Nghi thị địa thượng sương.**  
**Cử đầu vọng minh nguyệt,**  
**Đê đầu tư cố hương.**

---

### 🈶 Phồn thể

**床前明月光，**  
**疑是地上霜。**  
**舉頭望明月，**  
**低頭思故鄉。**

---

### 🇻🇳 Dịch thơ tiếng Việt

Ánh trăng rọi trước giường,  
Ngỡ là sương trên đất.  
Ngẩng đầu nhìn trăng sáng,  
Cúi đầu nhớ cố hương.

[⬆️ Quay lại Mục lục](#TopPage)

## 🕊️ Bạch Lộ – Bạch Cư Dị (白居易)

### 📖 Âm Hán Việt

**Bạch lộ đảo thanh thiên,**  
**Độc phi vạn lý duyên.**  
**Thị tòng hà xứ lai,**  
**Khứ hựu hà xứ miên?**

---

### 🈶 Phồn thể

**白鷺倒青天，**  
**獨飛萬里緣。**  
**是從何處來，**  
**去又何處眠？**

---

### 🇻🇳 Dịch thơ tiếng Việt (tham khảo)

Cò trắng lướt trời xanh,  
Một mình bay ngàn dặm.  
Từ đâu mà đến thế?  
Biết đâu là chốn nghỉ?

[⬆️ Quay lại Mục lục](#TopPage)

## 🏯 Hoàng Hạc Lầu – Thôi Hiệu (崔顥)

### 📖 Âm Hán Việt

Tích nhân dĩ thừa hoàng hạc khứ,  
Thử địa không dư Hoàng Hạc lâu.  
Hoàng hạc nhất khứ bất phục phản,  
Bạch vân thiên tải không du du.  

Tình xuyên lịch lịch Hán Dương thụ,  
Phương thảo thê thê Anh Vũ châu.  
Nhật mộ hương quan hà xứ thị?  
Yên ba giang thượng sử nhân sầu.

---

### 🈶 Phồn thể

昔人已乘黃鶴去，  
此地空餘黃鶴樓。  
黃鶴一去不復返，  
白雲千載空悠悠。  

晴川歷歷漢陽樹，  
芳草萋萋鸚鵡洲。  
日暮鄉關何處是？  
煙波江上使人愁。

---

### 🇻🇳 Dịch thơ tiếng Việt (Bản dịch của Tản Đà)

Người xưa đã cưỡi hạc vàng bay,  
Chốn ấy giờ đây chỉ lầu này.  
Hạc bay chẳng trở về theo nữa,  
Mây trắng nghìn thu vẫn lãng lay.  

Nắng rọi Hán Dương cây rợp mắt,  
Cỏ thơm Anh Vũ bãi xanh đầy.  
Chiều buông, đâu chốn quê hương cũ?  
Sông khói mong manh luống ngậm ngùi.

[⬆️ Quay lại Mục lục](#TopPage)


# Sửa đề tài DTT
## 250518 sung
- Chuyển mấy hình thành png nền trong để chèn powerpoint, words.
- viết codes bảng tên vị thuốc (chưa)


[⬆️ Quay lại Mục lục](#TopPage)

# Sửa đề tài SSTT.
250518
 Thêm tài liệu tham khảo

 [⬆️ Quay lại Mục lục](#TopPage)

 # Bát cương trong YHCT
 Có vai trò quan trọng để biết tình trạng âm dương hàn nhiệt
 ## Tứ chẩn
 - Vọng
 - Văn
 - Vấn
 - Thiết

[⬆️ Quay lại Mục lục](#TopPage)


# Bệnh đau lưng
Đau lưng là bệnh ...
## Giải phẫu
## Sinh lý
## Bệnh học YHCT
Thuộc chứng yêu thống, toạ cốt phong.
Thể bệnh thường gặp can thận âm hư phối hợp phong hàn thấp tý

[⬆️ Quay lại Mục lục](#TopPage)
