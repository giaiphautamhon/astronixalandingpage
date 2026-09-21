# ASTRONIXA GLOBAL — OHANA SUPER APP LANDING PAGE

Trang Web Landing Page công nghệ cao, tỷ lệ chuyển đổi tối đa theo phong cách **Cosmic Cyberpunk / Dark Mode Glow**.

---

## 📁 Cấu trúc thư mục

```text
ohana-astronixa-landing-page/
├── index.html           # Cấu trúc giao diện, nội dung toàn bộ trang web
├── style.css            # Toàn bộ hiệu ứng đồ họa, 3D Mockup, màu sắc, responsive
├── app.js               # Động cơ Canvas sao băng, Chatbot AI 5 trợ lý, Phone Simulator
├── profile-config.js    # TẬP TRUNG: File cấu hình thông tin cá nhân của bạn
├── images/              # Thư mục 28 hình ảnh mockup 3D, sự kiện, banner
└── README.md            # Tài liệu hướng dẫn sử dụng & triển khai
```

---

## ⚡ Hướng dẫn thay đổi thông tin của bạn

Mở file **`profile-config.js`** và chỉnh sửa các dòng tương ứng:

1. **`name`**: Đổi thành Họ & Tên của bạn.
2. **`role`**: Chức vụ / Danh xưng của bạn (vd: *Đối Tác Chiến Lược Astronixa*).
3. **`phone` & `phoneDisplay`**: Số điện thoại hotline nhận cuộc gọi.
4. **`zalo`**: Link Zalo của bạn (cú pháp: `https://zalo.me/SỐ_ĐIỆN_THOẠI`).
5. **`affiliateUrl`**: Link đăng ký tài khoản văn phòng Astronixa của bạn.
6. **`avatar`**: Ảnh đại diện cá nhân (đặt ảnh vào thư mục `images/` rồi sửa tên file tại đây).

> **Đặc biệt**: Mọi nút bấm Zalo, gọi điện Hotline, nút Đăng ký Affiliate và chân trang sẽ **tự động cập nhật đồng loạt** mà bạn không cần phải sửa từng dòng trong `index.html`.

---

## 🖥️ Cách xem trước trên máy tính (Preview Local)

### Cách 1: Mở trực tiếp
* Nhấp đúp chuột vào file `index.html` để mở ngay trên trình duyệt Chrome, Edge, Cốc Cốc.

### Cách 2: Chạy Local Web Server (Khuyên dùng)
Nếu máy bạn có Node.js (đã cài sẵn), chỉ cần mở Terminal/PowerShell tại thư mục này và gõ:
```bash
npx serve .
```
Hoặc dùng Live Server trong VS Code / Antigravity IDE.

---

## 🚀 Hướng dẫn đưa lên mạng miễn phí với Vercel (Trong 3 phút)

### Cách 1: Kéo thả trực tiếp lên Vercel (Không cần cài Git)
1. Đăng nhập vào trang [vercel.com](https://vercel.com/) (đăng nhập bằng tài khoản Google hoặc GitHub).
2. Tải công cụ Vercel CLI (nếu thích dùng lệnh) hoặc vào trang dashboard Vercel -> Bấm **Add New Project**.
3. Nếu dùng lệnh Terminal trong thư mục này:
   ```bash
   npx vercel
   ```
   (Làm theo hướng dẫn trên màn hình, ấn Enter chấp nhận mặc định là xong).

### Cách 2: Đẩy lên GitHub rồi kết nối Vercel
1. Tạo một repository mới trên GitHub (vd: `my-ohana-landingpage`).
2. Đẩy toàn bộ thư mục `ohana-astronixa-landing-page` lên GitHub.
3. Vào Vercel -> Chọn Import repository từ GitHub.
4. Bấm **Deploy**. Sau 30 giây bạn sẽ có ngay link dạng: `https://ten-ban-chon.vercel.app`.
